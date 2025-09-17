import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/on_boardin/presentation/Viwes/widgets/on_boarading_body.dart';

class OnBoardaingViwe extends StatelessWidget {
static const routeName="on_Bordaing viwe";
@override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: OnBoaradingBody()),
    );
  }

}