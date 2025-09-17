import 'package:flutter/material.dart' show AppBar, Navigator, Icons, Icon, Colors, Text, IconButton, Color;
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

AppBar bulid_Appbar({required String title,required context}) {
    return AppBar(
  leading: IconButton(onPressed: (){

    Navigator.pop(context);

  }, icon: Icon(Icons.arrow_back_ios_new,)),

  backgroundColor: Colors.white,
  centerTitle: true,
title: Text(title,
style: TextStyles.bold19.copyWith(
  
  color:Color(0xff0C0D0D),),


),


);
  }