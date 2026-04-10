import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/widgets/custome_bestselling_appbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/manger/bloc/home_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';

class BestSellingBody extends StatefulWidget {
  @override
  State<BestSellingBody> createState() => _BestSellingBodyState();
}

class _BestSellingBodyState extends State<BestSellingBody> {
  @override
  void initState() {
     BlocProvider.of<HomeBloc>(context).add(GetBustsalleingProductesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),

      child: Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
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
                SliverToBoxAdapter(child: CustomeBestsellingAppbar()),

                SliverToBoxAdapter(child: SizedBox(height: 28)),

                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "الأكثر مبيعًا",
                      textAlign: TextAlign.right,
                      style: TextStyles.bold16,
                    ),
                  ),
                ),
               
               
               
                SliverToBoxAdapter(child: SizedBox(height: 8)),
                if (state is HomeLoadingProductsState)
                  SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                   if (state is HomeProductsBestSaleingSuccessState)               
                 BestSalingGridviwe(products: state.products,),
              ],
            );
          },
        ),
      ),
    );
  }
}
