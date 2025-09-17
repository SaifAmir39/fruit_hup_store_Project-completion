import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/Splash_/presentation/Viwes/widgets/splash_viwe_body.dart';

class SplashView extends StatelessWidget {
static const routeName="splash";
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViweBody(),
    );
    throw UnimplementedError();
  }

}