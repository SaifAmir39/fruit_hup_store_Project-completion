import 'package:flutter/material.dart';

class inActiveStep extends StatelessWidget {
  final String number;
  final String title;
  inActiveStep({required this.number, required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar (
          radius: 12,
          backgroundColor:const Color(0xFFF2F3F3),
          child: Text(
    '${number}',
    style: TextStyle(
      color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
      height: 1.70,
    ),
  ),
        ),
        SizedBox(width: 8,),
      Text(
  '${title}',
  style: TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 1.70,
  ),
),
      ],
    );
    
  }
}