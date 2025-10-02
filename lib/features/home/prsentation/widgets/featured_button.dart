import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class FeaturedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 32,
      child: ElevatedButton(
        
        onPressed: (){},
      style: ElevatedButton.styleFrom(
        
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
      
      ),
      
       child: FittedBox(child: Text("تسوق الان",style:TextStyles.bold13.copyWith(color: Color(0xFF1B5E37))))),
    );
    
    
  }
}