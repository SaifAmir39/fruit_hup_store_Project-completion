import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/cart/presentation/views/cart_viwe.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/cutome_bootom_navgaitonbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/home_viwe_body.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/productes_viwe.dart';

class HomeViwe extends StatefulWidget {
   static const String routeName = 'Home viwe';

  @override
  State<HomeViwe> createState() => _HomeViweState();
}

class _HomeViweState extends State<HomeViwe> {
  int currentIndex=0;

  final  List<Widget> pages= [
    SafeArea(child: HomeViweBody()),
   ProductesViwe(),
  CartViwe(),  
    Container(
      color: Colors.blue,
    ),
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
   //
  
  
  // SafeArea(child: HomeViweBody()),
  );

    

  }
}