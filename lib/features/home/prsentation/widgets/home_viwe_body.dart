import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/custome_search%20_textfailed.dart';
import 'package:fruit_hup_store/core/utils/product/bloc/search_history_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/manger/bloc/home_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/Best_saling_header.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/custome_home_appbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/list_overs.dart';

class HomeViweBody extends StatefulWidget {
  @override
  State<HomeViweBody> createState() => _HomeViweBodyState();
}

class _HomeViweBodyState extends State<HomeViweBody> {
  TextEditingController textEditingSerachController = TextEditingController();
  FocusNode focusNode = FocusNode();
  String serachText = "";
  @override
  void initState() {
    
     BlocProvider.of<HomeBloc>(context).add(GetProductesEvent());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
          if (state is HomeErrorProductsState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.errormassge.toString()),
              ),
            );
          }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomeHomeAppbar()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CustomeSearchTextfailed(
              
              onSubmitted: (String p1) {  
                serachText = p1;
                BlocProvider.of<HomeBloc>(context).add(SerachproducteEvenr(textEditingSerachController.text));
              }, 
              focusNode: focusNode, controller: textEditingSerachController, onTap: () {
                BlocProvider.of<HomeBloc>(context).add(OnTapTedxtFailedEvent());
                },)),
                SliverToBoxAdapter(child: SizedBox(height: 12)),
                 BlocBuilder<SearchHistoryBloc, SearchHistoryState>(builder: (context, state) {
              if(state is ProductNotFoundinSearch){

                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          width: 230,
                          height: 230,
                          "assets/images/Noproductfound.svg"),
                        SizedBox(height: 20),
                        Text(
                          'البحث',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF616A6B),
                            fontSize: 16,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'عفوًا... هذه المعلومات غير متوفرة للحظة',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF949D9E),
                            fontSize: 13,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              else if (state is SerachProductSucess){
               return BestSalingGridviwe(products: state.products,);
              }
              else if (state is GetSerarchHistroyEmptyState){
               return SliverToBoxAdapter(child: 

               Align(
                 alignment: Alignment.center,
                 child: Text(
                  'لا يوجد سجلات بحث',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF616A6B),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
               ),
               
               );
              }
              else if (state is GetSerarchHistroySucessState){
               return SliverList.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                 return GestureDetector(
                   onTap: () {
                      BlocProvider.of<SearchHistoryBloc>(context)
                      .add(SerachProducteEvent(text: state.products[index]));
                   },
                   child: Container(
                    
                     child: Row(
                       mainAxisSize: MainAxisSize.min,
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       spacing: 235,
                       children: [
                         Container(width: 24, height: 24, child: Stack()),
                         Container(
                           width: 84,
                           child: Row(
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment: MainAxisAlignment.end,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             spacing: 16,
                             children: [
                               Text(
                                 '${state.products[index]}',
                                 textAlign: TextAlign.right,
                                 style: TextStyle(
                                   color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                                   fontSize: 16,
                                   fontFamily: 'Cairo',
                                   fontWeight: FontWeight.w400,
                                   height: 1.40,
                                 ),
                               ),
                               Container(
                                 width: 24,
                                 height: 24,
                                 clipBehavior: Clip.antiAlias,
                                 decoration: BoxDecoration(),
                                 child: Stack(),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 );
               });
              }


            
              return SliverToBoxAdapter(child: SizedBox(height: 0));
            }),

              
            
            SliverToBoxAdapter(child: SizedBox(height: 12)),
            if(state is HomeProductsSucessState)
            SliverToBoxAdapter(child: ListOvers()),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
             if(state is HomeProductsSucessState)
            SliverToBoxAdapter(child: BestSalingHeader()),
            SliverToBoxAdapter(child: SizedBox(height: 8)),

           
           if (state is HomeLoadingProductsState)
              SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
           
           if (state is HomeProductsSucessState)
                           BestSalingGridviwe(products: state.products,),
         if (state is HomeErrorProductsState) 
              SliverToBoxAdapter(
                child: Center(
                  child: Text(state.errormassge.toString()),
                ),
              ),
          
            
          ],
        );
      },
    );
  }
}
