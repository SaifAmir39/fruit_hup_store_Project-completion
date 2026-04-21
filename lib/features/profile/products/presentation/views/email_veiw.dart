import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/views/emil_veiw_body.dart';

class EmailVeiw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return   Scaffold(
      appBar: bulid_Appbar(title: "الملف الشخصي", context: context),
      body:EmilVeiwBody(),
    );
   
  }
}