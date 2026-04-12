import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/cart_viwe.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/checkout_view.dart';
import 'package:fruit_hup_store/features/home/prsentation/viwes/home_viwe.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/cutome_bootom_navgaitonbar.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/productes_viwe.dart';

class Mainviwe extends StatefulWidget {
   static const String routeName = 'Home viwe';

  @override
  State<Mainviwe> createState() => _MainviweState();
}

class _MainviweState extends State<Mainviwe> {
  int currentIndex=0;

  final  List<Widget> pages= [
    SafeArea(child: HomeViwe()),
   ProductesViwe(),
  CartViwe(),
    CheckoutView(),
  ];

   @override
  Widget build(BuildContext context) {
  return Scaffold(
   bottomNavigationBar:CustomeBootomNavgaitonbar(
    currentIndex: currentIndex,
    onTap: (index) {
      setState(() {
        currentIndex = index;
      });
    },
   ),
  body: pages[currentIndex],
   
  
  
  
  );

    

  }
}