import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            SliverToBoxAdapter(child: CustomeSearchTextfailed()),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
            SliverToBoxAdapter(child: ListOvers()),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
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
