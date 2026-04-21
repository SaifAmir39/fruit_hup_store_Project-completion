import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/favorites_view_body.dart';

class FavoriteViwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: bulid_Appbar(title: "المفضلة", context: context),
     
     body:FavoritesViewBody(), 
     );
    
  }
}