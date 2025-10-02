import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class CustomeHomeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child:    Container(
            width: 34,
            height: 34,
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF8ED),
              shape: OvalBorder(),
              
            ),
            child:SvgPicture.asset(Assets.imagesNotification,),
            
            
          ),
      ),
      
     title: Text("صباح الخير !..",textAlign: TextAlign.right,
     style: TextStyles.regular16.copyWith(color: Color(0xFF949D9E)),
     
     ),
     subtitle: Text("سيف امير ",textAlign: TextAlign.right, style:  TextStyles.bold16.copyWith(color: Color(0xFF0C0D0D))),
        trailing: Container(
          width: 44,
          height: 44,
          decoration: ShapeDecoration(
            color:  Colors.green.shade500, 
            shape: OvalBorder(),
          ),
          child:Image.asset(Assets.imagesProfileImage,),
        ),
             
    );
  }
}