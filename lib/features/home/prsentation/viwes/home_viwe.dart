import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/cutome_bootom_navgaitonbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/home_viwe_body.dart';

class HomeViwe extends StatelessWidget {
 static const String routeName = 'Home viwe';
   @override
  Widget build(BuildContext context) {
  return Scaffold(
   bottomNavigationBar: CustomeBootomNavgaitonbar(),
  body: SafeArea(child: HomeViweBody()),
  );

    

  }


}