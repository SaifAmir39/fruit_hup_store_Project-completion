import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/service/shared_preferences_singletone.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/on_generate_routes.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/Splash_View.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.init();
    
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
    setup();

  runApp(FriutHub());
}

class FriutHub extends StatelessWidget{

@override
  Widget build(BuildContext context) {
   return MaterialApp(
    
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor
      
      
      ),
      fontFamily: "Cairo",
    ),
   
  debugShowCheckedModeBanner: false,


 onGenerateRoute: onGenerateRoute,

 initialRoute: SplashView.routeName,
   );
  }

}
