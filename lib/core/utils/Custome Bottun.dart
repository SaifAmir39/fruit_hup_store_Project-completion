
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class Customebottun extends StatelessWidget{
  final void Function() onpressed ;

  final String title;

  Customebottun({required this.onpressed,required this.title});
@override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor:AppColors.primaryColor,
        ),
        
        onPressed:onpressed , child: Text(
       title,style: TextStyles.bold16.copyWith(color: Colors.white),
      
      ),),
    );
  }


}