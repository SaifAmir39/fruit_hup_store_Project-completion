import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';

class CustomeBestsellingAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return ListTile(
  leading:Padding(
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
  title: Text(
          'الأكثر مبيعًا',
          textAlign: TextAlign.center,
          style:TextStyles.bold19.copyWith(color: Color(0xFF0C0D0D)
          
          ),
        ), 

        trailing:Container(
              width: 44,
              height: 44,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFF1F1F5),
                  ),
                ),
              ),
              child:IconButton(
  icon: Icon(
    Icons.arrow_forward,
    size: 22,
    color: Colors.black,
  ),
  onPressed: () {
   Navigator.pop(context);
  },
),
            ),  
  
 );    
  }
}
