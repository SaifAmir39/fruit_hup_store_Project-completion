import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/custome_search%20_textfailed.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/Best_saling_header.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/productes_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/bootom_sheet.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/list_of_catgroy.dart';

class ProductesViweBody extends StatefulWidget {
  @override
  State<ProductesViweBody> createState() => _ProductesViweBodyState();
}

class _ProductesViweBodyState extends State<ProductesViweBody> {
 
 void initState() {
    
     
    super.initState();
    BlocProvider.of<ProductesBloc>(context).add(GetProductesinproductviweEvent());
    
  }
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductesBloc, ProductesState>(
      builder: (context, state) {
        
       
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: CustomeSearchTextfailed()),
              SliverToBoxAdapter(child: SizedBox(height: 12)),

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
                    Spacer(),
                    GestureDetector(
                      onTap: () {
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
              SliverToBoxAdapter(child: ListOfCatgroy()),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
             SliverToBoxAdapter(child: SizedBox(height: 12)),
            SliverToBoxAdapter(child: BestSalingHeader()),
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
                           BestSalingGridviwe(products: state.products,),
         if (state is ErrorProductsState) 
              SliverToBoxAdapter(
                child: Center(
                  child: Text(state.errormassge.toString()),
                ),
              ),
              
            ],
          );
        }
        
      
    );
  }
}
