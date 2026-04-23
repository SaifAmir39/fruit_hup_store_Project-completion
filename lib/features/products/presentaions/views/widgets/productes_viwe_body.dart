import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/custome_search%20_textfailed.dart';
import 'package:fruit_hup_store/core/utils/product/bloc/search_history_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/Best_saling_header.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/productes_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bootomsheet_cubit.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/bootom_sheet.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/list_of_catgroy.dart';

class ProductesViweBody extends StatefulWidget {
  @override
  State<ProductesViweBody> createState() => _ProductesViweBodyState();
}

class _ProductesViweBodyState extends State<ProductesViweBody> {
  TextEditingController textEditingSerachController = TextEditingController();
  FocusNode focusNode = FocusNode();
  String serachText = "";
  void initState() {
    super.initState();
    BlocProvider.of<ProductesBloc>(
      context,
    ).add(GetProductesinproductviweEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductesBloc, ProductesState>(
     
        builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 16)),
           
           
           
           
           
           
           
            SliverToBoxAdapter(
              child: CustomeSearchTextfailed(
                onSubmitted: (String p1) {
                  
                  BlocProvider.of<SearchHistoryBloc>(context)
                      .add(SerachProducteEvent(text: textEditingSerachController.text));
                },
                focusNode: focusNode,
                controller: textEditingSerachController,
                onTap: () {
                    BlocProvider.of<SearchHistoryBloc>(context)
                      .add(GetSearchHistoryEvent());
                },
              ),
            ),
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
                      
                       children: [
                         Container(width: 24, height: 24, child: Stack()),
                         Container(
                          
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
                               SizedBox(width: 16,),
                               Container(
                                 width: 24,
                                 height: 24,
                                 clipBehavior: Clip.antiAlias,
                                 decoration: BoxDecoration(),
                                 child: Icon(Icons.history,),
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
            

            SliverToBoxAdapter(
              child: Row(
                children: [
                 
                 
                 
                 Text(
  'منتجاتنا',
  textAlign: TextAlign.right,
  style: TextStyle(
    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
                 
                 
                 
                 
                 
                 
                 
               
                  if (state is GetProductesFiltersSucessState)
                    Text(
                      "(${state.products.length})"  +  " نتائج",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  Spacer(),
                  if (state is GetSerachproducteSucessState)
                  SizedBox(width: 12),
                  
                  if (state is ProductsSucessState || state is GetProductesFiltersSucessState)
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<BootomsheetCubit>(context).changeUi(true);
                      BootomSheet().showBootomSheet(context);
                    },
                    child: Container(
                      width: 44,
                      height: 31,

                      decoration: ShapeDecoration(
                        color: Colors.white.withValues(alpha: 0.10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0x66CACECE),
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/images/arrow-swap-horizontal.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 16)),
            if (state is ProductsSucessState)
              SliverToBoxAdapter(child: ListOfCatgroy()),
            if (state is GetProductesFiltersSucessState)
              SliverToBoxAdapter(child: SizedBox()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
            if (state is ProductsSucessState)
              SliverToBoxAdapter(child: BestSalingHeader()),
            if (state is GetProductesFiltersSucessState)
              SliverToBoxAdapter(child: SizedBox()),
            SliverToBoxAdapter(child: SizedBox(height: 8)),

            if (state is ProductsLoadingState)
              SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),

            if (state is ProductsSucessState)
              BestSalingGridviwe(products: state.products),

            if (state is GetProductesFiltersSucessState)
              BestSalingGridviwe(products: state.products),

            if (state is ErrorProductsState)
              SliverToBoxAdapter(
                child: Center(child: Text(state.errormassge.toString())),
              ),
          ],
        );
      },
    );
  }
}