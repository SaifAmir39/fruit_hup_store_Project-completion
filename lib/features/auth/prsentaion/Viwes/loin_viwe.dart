import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Login_viwe_body.dart';

class LoinViwe extends StatelessWidget {
static const routeName="Login_viwe";

@override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: bulid_Appbar(title: "تسجيل دخول" ,context: context),

    body:LoginViweBody() ,
    );
  }

}