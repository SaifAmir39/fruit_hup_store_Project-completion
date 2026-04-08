import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

AppBar CustomeAppbar ({required String title,required context}) {
    return AppBar(
  leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child:    Container(
            width: 34,
            height: 34,
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF8ED),
              shape: OvalBorder(),
              
            ),
            child:SvgPicture.asset(Assets.imagesNotification,),
            
            
          ),
      ),

  backgroundColor: Colors.white,
  centerTitle: true,
title: Text(title,
style: TextStyles.bold19.copyWith(
  
  color:Color(0xff0C0D0D),),


),


);
  }
