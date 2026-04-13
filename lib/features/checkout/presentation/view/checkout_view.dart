import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget   {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: CheckoutViewBody(),
    );
  }
}