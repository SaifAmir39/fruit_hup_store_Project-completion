import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/category_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/catrogy_item.dart';

class ListOfCatgroy extends StatefulWidget {
  @override
  State<ListOfCatgroy> createState() => _ListOfCatgroyState();
}

class _ListOfCatgroyState extends State<ListOfCatgroy> {
  void initState() {
    
     
    super.initState();
    BlocProvider.of<CategoryBloc>(context).add(GetCategoryEvent());
    
  }

  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        if (state is ErrorCategoryState) {
          return Center(
            child: Text(state.errormassge),
          );
        }
        
        if (state is CategoryLoadingState) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
        
        
        if (state is GetCategorySuccessState) {
          return SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CatrogyItem(productentity: state.products[index],),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
