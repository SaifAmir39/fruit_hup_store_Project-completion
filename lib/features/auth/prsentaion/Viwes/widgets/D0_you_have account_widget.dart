import 'package:flutter/material.dart';

class Doyouhaveaccount extends StatelessWidget{

  final String title;
   final String subtitle;
Doyouhaveaccount({required this.title,required this.subtitle});
@override
  Widget build(BuildContext context) {
    return Text.rich(
            TextSpan(
              children: [
               
                
                TextSpan(
                  text:title,
                  style: TextStyle(
                    color: const Color(0xFF949D9E) ,
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                  ),
                ),
                TextSpan(
                  text: ' ؟',
                  style: TextStyle(
                    color: const Color(0xFF616A6B),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                  ),
                ),

                 TextSpan(
                  text: subtitle,
                  style: TextStyle(
                    color: const Color(0xFF1B5E37) ,
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
                   );
  }


}