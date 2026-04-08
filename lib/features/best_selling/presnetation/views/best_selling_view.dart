import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/widgets/best_selling_body.dart';

class BestSellingView extends StatelessWidget {
  static const routeName= "BestSellingView" ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       

     body: SafeArea(child: BestSellingBody()),
    );
  
  }
}