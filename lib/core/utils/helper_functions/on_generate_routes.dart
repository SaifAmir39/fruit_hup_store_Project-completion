
import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/Splash_View.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/loin_viwe.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/signup_Viwe.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/views/best_selling_view.dart';
import 'package:fruit_hup_store/features/home/prsentation/viwes/home_viwe.dart';
import 'package:fruit_hup_store/features/on_boardin/presentation/Viwes/on_boardaing_viwe.dart';
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) =>   SplashView());
    
     case OnBoardaingViwe.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardaingViwe());

      
     case LoinViwe.routeName:
      return MaterialPageRoute(builder: (context) =>LoinViwe());
       case SignupViwe.routeName:
      return MaterialPageRoute(builder: (context) =>SignupViwe());

      case HomeViwe.routeName:
      return MaterialPageRoute(builder: (context) =>HomeViwe());

      case BestSellingView.routeName:

      return MaterialPageRoute(builder: (context)=>BestSellingView());

      
   default:
   return MaterialPageRoute(builder: (context)=>  Scaffold());
  }
  
  
  }