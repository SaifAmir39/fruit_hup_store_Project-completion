import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/custome_search%20_textfailed.dart';
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

                if(state is NoproductFound)
                
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child:Column(
                children: [
                  SvgPicture.asset(
                    width: 230,
                    height: 230,
                    "assets/images/Noproductfound.svg"),
            
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                'البحث',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF616A6B) /* Grayscale-600 */,
                  fontSize: 16,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8,
              ),
            
               Text(
                'عفوًا... هذه المعلومات غير متوفرة للحظة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF949D9E) /* Grayscale-400 */,
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                  height: 1.60,
                ),
              ),
            
                ],
              ) ,
            ),
          ),
            if(state is GetSerachproducteSucess)

             BestSalingGridviwe(products: state.products,),
            
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
