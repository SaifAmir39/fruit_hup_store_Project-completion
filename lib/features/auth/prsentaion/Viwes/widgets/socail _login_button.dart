// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';


class SocailLoginButton extends StatelessWidget {
  final void Function() onpaessed;
  final String image;
  final String title;
  SocailLoginButton({
    Key? key,
    required this.onpaessed,
    required this.image,
    required this.title,
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16)
          
        ),
        side: BorderSide(
          width: 1,
          color: Color(0xffDCDEDE)
        ),
          
        ),
        
        onPressed: onpaessed, child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          
       title: SvgPicture.asset(image),
       trailing: Text(title,style:TextStyles.semiBold16.copyWith(color: Color(0xff0C0D0D))),),
      
      )
    );
  }
}
