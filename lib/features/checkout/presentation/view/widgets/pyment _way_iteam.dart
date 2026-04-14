import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PymentWayIteam extends StatelessWidget   {
 final String Image;
 final bool isVisa;
  const PymentWayIteam({
    Key? key,
    required this.Image,
    required this.isVisa,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  return Container(
  padding: const EdgeInsets.all(8),
  width: 67,
  height: 43,
  decoration: ShapeDecoration(
    color:isVisa? const Color(0xFF1434CB): Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 1,
        strokeAlign: BorderSide.strokeAlignOutside,
        color: const Color(0xFFD6DCE5),
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    shadows: [
      BoxShadow(
        color: Color(0x14B7B7B7),
        blurRadius: 20,
        offset: Offset(0, 2),
        spreadRadius: 0,
      )
    ],
  ),
  child: SvgPicture.asset(Image),
);
   
  }
}