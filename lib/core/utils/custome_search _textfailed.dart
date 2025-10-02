import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class CustomeSearchTextfailed extends StatelessWidget {
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
      child: TextField(
       decoration: InputDecoration(
        suffixIcon: SizedBox(
         width: 20,
          height: 20,
          child: SvgPicture.asset(Assets.imagesSearchIcon,fit: BoxFit.scaleDown),
            ),
           prefixIcon: SizedBox(
         width: 20 ,
         height: 20,
         child: SvgPicture.asset(Assets.imagesFilter,fit: BoxFit.scaleDown),
           ),
           filled: true,
       fillColor:Color(0xFFF9FAFA) ,
      
           hintText: "ابحث عن.......",
           
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