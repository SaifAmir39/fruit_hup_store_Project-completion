import 'package:flutter/material.dart';

class TextfailedOfSort extends StatelessWidget {
 final TextEditingController controller;
  TextfailedOfSort({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 36,
      
      child: Align(
        alignment: Alignment.center,
        child: TextField(
          onTap: null,
          controller: controller,
          keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
         decoration:InputDecoration(
            hintText: "0",
          
           filled: true,
           fillColor:Color(0xFFF9FAFA) ,
          border: Bulidborder(),
          focusedBorder: Bulidborder(),
          enabledBorder: Bulidborder(),
        
          
            
          ),
          ),
      ),
    );
 
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
}