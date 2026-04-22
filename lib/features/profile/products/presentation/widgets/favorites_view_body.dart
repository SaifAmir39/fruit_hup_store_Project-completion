import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/manger/favorites_bloc.dart';

class FavoritesViewBody extends StatefulWidget {
  @override
  State<FavoritesViewBody> createState() => _FavoritesViewBodyState();
}

class _FavoritesViewBodyState extends State<FavoritesViewBody> {
  @override
  void initState() {
   
    super.initState();
    BlocProvider.of<FavoritesBloc>(context).add(GetFavoritesEvent());
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state){
        if(state is FavoritesLoading){
          return const Center(child: CircularProgressIndicator(),);
        }
        else if (state is FavoritesisEmpty){
          return const Center(child: Text("لا يوجد منتجات في المفضلة"),);
        }
        else if (state is GetFavoritesSuccess){
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child:CustomScrollView(
              slivers: [
               BestSalingGridviwe(products: state.products,),
            ]),
            
           
          );
        }
        else if (state is GetFavoritesError){
          return Center(child: Text(state.message));
        }
        return Container();
      }
    );
   
  }
}