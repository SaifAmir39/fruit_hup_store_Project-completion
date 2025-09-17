import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class CustomeTxetFormFailed extends StatelessWidget {
final String title;
final TextInputType textInputType;
final Widget? suffixicon;
final TextEditingController textEditingController;
final bool isviwed;
CustomeTxetFormFailed({ this.isviwed=false ,required this.title,required this.textInputType , this.suffixicon,required this.textEditingController});
   
@override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isviwed,
      controller: textEditingController,
     validator: (valu) {
        if (valu?.isEmpty ?? true) {
          return ("Failed is required");
        } else {
          return null;
        }
      },
      keyboardType:textInputType,
    decoration:InputDecoration(
      
    hintText: title,
    suffixIcon: suffixicon,
    disabledBorder: Bulidborder() ,
    hintStyle: TextStyles.bold13.copyWith(color: Color(0xff949D9E)) ,
     filled: true,
     fillColor:Color(0xFFF9FAFA) ,
    border: Bulidborder(),
    focusedBorder: Bulidborder(),
    enabledBorder: Bulidborder(),

    
      
    ),
    );
  }
}

OutlineInputBorder Bulidborder (){
 
 
      
return   OutlineInputBorder(
      
   borderSide: BorderSide(
  width: 1,
    color: Color(0xffE6E9E9),
   ),
   borderRadius: BorderRadius.circular(4),
   
    );
   
 }
