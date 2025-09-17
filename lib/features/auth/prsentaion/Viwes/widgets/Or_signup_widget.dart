import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class OrSignupWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
    
    children: [
    Expanded(child: 
    Divider(
   thickness: 1,
   
    color: Color(0xffDDDFDF),
    ),
    ),
    
      SizedBox(
        height: 24,
      ),
    Center(
      child: Text("أو",textAlign: TextAlign.center,
      style: TextStyles.semiBold16
      
      
      
      ),
    ),
    
    Expanded(child: 
    Divider(
    
    
                
    thickness: 1,
    color: Color(0xffDDDFDF),
    ),
    ),
      SizedBox(
        height: 24,
      ),
    
    
    
    ],
    
            );
  }
}