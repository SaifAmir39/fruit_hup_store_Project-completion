import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DescriptionsProduct extends StatelessWidget {
final String title;
final String subtitle;
final String image;
final bool isreviwe;
  DescriptionsProduct({required this.title, required this.subtitle, required this.image,required this.isreviwe} );

  @override
  Widget build(BuildContext context) {
    return Container(
 
  padding: const EdgeInsets.only(
    top: 12,
    left: 16,
    right: 8,
    bottom: 12,
  ),
  decoration: ShapeDecoration(
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 1,
        color: const Color(0xFFF1F1F5),
      ),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  child:SizedBox(
    width: 100,
    height: 60,
    child: Row(
      children: [

        Column(
          children: [
            Row(
              children: [
        Text(
  "$title",
  textAlign: TextAlign.right,
  style: TextStyle(
    color: const Color(0xFF23AA49),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
SizedBox(width: 8,),
isreviwe? Text(
        '(256)',
        style: TextStyle(
          color: const Color(0xFF969899),
          fontSize: 13,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w600,
          height: 1.70,
        ),
      ): Container(),
              ],
            ),
      
SizedBox(height: 8,),
              Text(
  subtitle,
  textAlign: TextAlign.right,
  style: TextStyle(
    color: const Color(0xFF969899),
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 1.70,
  ),
),
          ],
        ),
        SizedBox(width: 16,),
        SvgPicture.asset(image),
       
      ],
    ),
  )
    );
  }
}