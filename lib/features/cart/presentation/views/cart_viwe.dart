import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/widgets/cart_viwe_body.dart';
import 'package:fruit_hup_store/features/home/prsentation/viwes/main_viwe.dart';

class CartViwe extends StatelessWidget {
  static const String routeName = 'cartviwe';  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar:bulid_Appbar(title: "السلة", context: context,
     
     ontaparrow: () =>Navigator.pushNamedAndRemoveUntil(context, Mainviwe.routeName, (route) => false), 
   
     ),
     
      body: CartViweBody(),
    
     );
     
  }
}