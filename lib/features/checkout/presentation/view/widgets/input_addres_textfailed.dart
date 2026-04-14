import 'package:flutter/material.dart';

import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class InputAddresTextfailed extends StatelessWidget {
final TextEditingController controller ;
final String hintText;
InputAddresTextfailed({required this.hintText,required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            shadows: [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 9,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: controller,
       decoration: InputDecoration(
       
           filled: true,
       fillColor:Color(0xFFF9FAFA) ,
      
           hintText: hintText,
           
           hintStyle: TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E),),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        
          ),
      
          focusedBorder: Bulidborder(),
          enabledBorder: Bulidborder( ),
       ),
      
       
         onChanged: (value){}
         
          
      ),
    );
  }
  OutlineInputBorder Bulidborder ( ){
 
 
      
return   OutlineInputBorder(
      
   borderSide: BorderSide(
  width: 1,
    color: Color(0xffE6E9E9),
   ),
   borderRadius: BorderRadius.circular(4),
   
    );
   
 }
} 


