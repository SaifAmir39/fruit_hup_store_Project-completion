import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/widgets/best_selling_body.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/cutome_bootom_navgaitonbar.dart';

class BestSellingView extends StatelessWidget {
  static const routeName= "BestSellingView" ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: CustomeBootomNavgaitonbar(),

     body: SafeArea(child: BestSellingBody()),
    );
  
  }
}