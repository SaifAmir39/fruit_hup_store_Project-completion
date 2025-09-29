
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/core/utils/custome%20_txet_form_failed.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/cubits/signup_cubit_cubit.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/D0_you_have%20account_widget.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Terms%20_and_%20Conditions.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/password_text_failed.dart';

class SignupViweBody extends StatefulWidget {
  @override
  State<SignupViweBody> createState() => _SignupViweBodyState();
}

class _SignupViweBodyState extends State<SignupViweBody> {
  bool isTermsAcppeted = false;
  final textcontrrolname = TextEditingController();
  final textcontrrolpassword = TextEditingController();
  final textcontrrolemail = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            CustomeTxetFormFailed(
              isviwed: false,
              title: "الاسم كامل",
              textInputType: TextInputType.emailAddress,
              textEditingController: textcontrrolname,
            ),
            SizedBox(height: 16),
            CustomeTxetFormFailed(
              isviwed: false,
              title: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
              textEditingController: textcontrrolemail,
            ),
            SizedBox(height: 16),
            PasswordTextFailed(textcontrrolpassword: textcontrrolpassword),
            SizedBox(height: 16),

            TermsAndconditions(
              onchange: (bool value) {
                isTermsAcppeted = value;
              },
            ),

            SizedBox(height: 33),
            Customebottun(
              onpressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();

                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
                if (isTermsAcppeted) {
               
                  BlocProvider.of<SignupCubitCubit>(
                    context,
                  ).createuserwithemailanpassword(
                    email: textcontrrolemail.text,
                    password: textcontrrolpassword.text,
                    name: textcontrrolname.text,
                  );
                

                }

                else{
                ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: 
              Text("palese Accpet trems and condations",
              style: TextStyles.bold16,
              )
             ),
             );         


                }
              },
              title: "إنشاء حساب جديد",
            ),
            SizedBox(height: 33),
            Center(
              child: Doyouhaveaccount(
                title: "تمتلك حساب ",
                subtitle: "تسجيل دخول",
              ),
            ),
            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
