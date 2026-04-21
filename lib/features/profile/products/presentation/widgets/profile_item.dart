import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup_store/features/profile/data/profileItemModle.dart';

class ProfileItem extends StatelessWidget {
 final ProfileItemModle profileItemModle;

  const ProfileItem({Key? key, required this.profileItemModle,}) : super(key: key);
 
 
  @override

  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: profileItemModle.onTap,
      child: Container(
        
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: const Color(0xFFF2F3F3) /* Grayscale-50 */,
        ),
      ),
        ),
        child: Row(
      children: [
        SvgPicture.asset("${profileItemModle.image}", width: 24, height: 24),
        SizedBox(width: 8),
        Text(
        '${profileItemModle.title}',
        style: TextStyle(
      color: const Color(0xFF949D9E) /* Grayscale-400 */,
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
      height: 1.70,
        ),
      ),
      Spacer(),
      Container(
       
        child: Icon(Icons.arrow_forward_ios, color: const Color(0xFF0C0D0D)),
      )
      ],
        ),
      ),
    );
  }
}