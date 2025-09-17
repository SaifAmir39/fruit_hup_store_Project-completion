
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/loin_viwe.dart';

class PageviweIteam extends StatelessWidget {
  final String image;
  final String backgroungimage;
  final String subtitle;
  final Widget text;
  final bool isvisble;
  PageviweIteam({
    required this.isvisble,
    required this.image,
    required this.backgroungimage,
    required this.subtitle,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroungimage, fit: BoxFit.fill),
              ),

              Positioned(
                bottom: 0,
                child: SvgPicture.asset(image, fit: BoxFit.none),
                left: 0,
                right: 0,
              ),
              Visibility(
                visible: isvisble,
                child: Positioned(
                  child: GestureDetector(
                    onTap: (){
                   Navigator.pushReplacementNamed(context,LoinViwe.routeName);
                  
                    },
                    child: Text("تخط", style: TextStyle(color: Colors.blueGrey))),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        SizedBox(child: text),
        SizedBox(height: 24),

        SizedBox(child: Text(subtitle,style:TextStyles.semiBold13)),
      ],
    );

    throw UnimplementedError();
  }
}
