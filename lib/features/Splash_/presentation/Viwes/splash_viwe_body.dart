import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup_store/core/service/auth_service.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/features/home/prsentation/viwes/home_viwe.dart';
import 'package:fruit_hup_store/features/on_boardin/presentation/Viwes/on_boardaing_viwe.dart';

class SplashViweBody extends StatefulWidget {

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();



}



class _SplashViweBodyState extends State<SplashViweBody> {
@override

void initState(){
super.initState();
  excuteNavgation(context);


}



  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
     Align(
      alignment: Alignment.topLeft,
      child: SvgPicture.asset(Assets.imagesPlant)),
     SvgPicture.asset(Assets.imagesLogo),
     
     SvgPicture.asset(
      fit: BoxFit.fill,
      Assets.imagesSplashBottom),
  ],


    );
  }
}

void excuteNavgation(BuildContext context){

Future.delayed(Duration(seconds: 4)
,(){
 

  bool islogin = AuthService().Userloggedin();


Navigator.pushReplacementNamed(context, 
OnBoardaingViwe.routeName);








}


);


}
