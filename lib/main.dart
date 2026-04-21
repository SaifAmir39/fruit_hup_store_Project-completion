import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/service/shared_preferences_singletone.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/on_generate_routes.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/Splash_View.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/firebase_options.dart';
import 'package:fruit_hup_store/features/cart/presentation/manger/cart_cubit.dart';
import 'package:fruit_hup_store/features/home/prsentation/manger/bloc/home_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/productes_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bootomsheet_cubit.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/manger/favorites_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();

  runApp(FriutHub());
}

class FriutHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(
          create: (context) => CartCubit(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(productRepo: getIt<ProductRepo>()),

        ),      
          BlocProvider<ProductesBloc>(
          create: (context) => ProductesBloc(productRepo: getIt<ProductRepo>()),
          
        ),  
          BlocProvider<BootomsheetCubit>(
          create: (context) => BootomsheetCubit(),
          
        ),

           BlocProvider<FavoritesBloc>(
          create: (context) => FavoritesBloc(productRepo: getIt<ProductRepo>()),
          
        ),
        
        
        ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          fontFamily: "Cairo",
        ),

        debugShowCheckedModeBanner: false,

        onGenerateRoute: onGenerateRoute,

        initialRoute: SplashView.routeName,
      ),
    );
  }
}
