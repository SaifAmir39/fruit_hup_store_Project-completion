
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/core/utils/custome%20_txet_form_failed.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/cubits/sign_in_cubit.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/signup_Viwe.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/D0_you_have%20account_widget.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Or_signup_widget.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/password_text_failed.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/socail%20_login_button.dart';

class LoginViweBody extends StatefulWidget  {

  @override
  State<LoginViweBody> createState() => _LoginViweBodyState();
}

class _LoginViweBodyState extends State<LoginViweBody> {
  final textcontrrolpassword =TextEditingController();
  final textcontrrolemail =TextEditingController();
   GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            CustomeTxetFormFailed(isviwed: false,textEditingController: textcontrrolemail,title: 'البريد الإلكتروني', textInputType: TextInputType.emailAddress,),
            SizedBox(
              height: 16,
            ),
                      PasswordTextFailed(textcontrrolpassword:textcontrrolpassword ,),
        
              SizedBox(
                height: 16,
              ),
            Text("نسيت كلمة المرور؟",
            
            style:TextStyles.semiBold13.copyWith(color: Color(0xff2D9F5D)) ,
            ),
        
            SizedBox(
              height: 33,
            ),
            Customebottun(onpressed: (){
             if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                     BlocProvider.of<SignInCubit>(context).Siginwithemailanpassword(textcontrrolemail.text, textcontrrolpassword.text);
        
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
        
            }, title: "تسجيل دخول"),
            SizedBox(
              height: 33,
            ),
             Center(
               child: GestureDetector(onTap: (){
                 Navigator.pushNamed(context, SignupViwe.routeName);
        
               },child: Doyouhaveaccount(title:"لا تمتلك حساب",subtitle: "قم بانشاء حساب ")),
             ),
             SizedBox(
              height: 33,
             ),
              OrSignupWidget(),
              SizedBox(
                height: 16,
              ),
                    SocailLoginButton(onpaessed: () { 
                        BlocProvider.of<SignInCubit>(context).siginwithgooale();

                     


                     }, image:Assets.imagesGoogleIcon, title:"تسجيل بواسطة جوجل" ),
                    SizedBox(height: 16,),
                     SocailLoginButton(onpaessed:(){}, image: Assets.imagesApplIcon, title: "تسجيل بواسطة أبل"),
                                     SizedBox(height: 16,),
        
                    SocailLoginButton(onpaessed:(){
                        BlocProvider.of<SignInCubit>(context).siginwithfacebook();
                    }, image: Assets.imagesFacebookIcon, title: "تسجيل بواسطة فيسبوك"),
                                    SizedBox(height: 16,),
        
        
        
          ],
          
          
          ),
        ),
      ),
    );
  }
}