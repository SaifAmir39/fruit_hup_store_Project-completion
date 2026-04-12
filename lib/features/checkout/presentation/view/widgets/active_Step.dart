import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';

class ActiveStep extends StatelessWidget {
  final String title;
  ActiveStep({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar (
          radius: 12,
          backgroundColor:AppColors.primaryColor,
          child: SvgPicture.asset("assets/images/Check.svg",
          width: 16,
          
          ),
        ),
        SizedBox(width: 8,),
        Text(
  title,
  style: TextStyle(
    color: const Color(0xFF1B5E37) /* Green1-500 */,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
)
      ],
    );
    
  }
}