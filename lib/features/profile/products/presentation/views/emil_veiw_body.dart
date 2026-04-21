import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/core/utils/custome%20_txet_form_failed.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/password_text_failed.dart';

class EmilVeiwBody extends StatelessWidget {
  
final  TextEditingController textEditingeEmilController = TextEditingController();
final  TextEditingController textEditingeNameController = TextEditingController();
final  TextEditingController textEditingePasswprdController = TextEditingController();
 final  TextEditingController textEditingeNewPasswprdController = TextEditingController();
 final  TextEditingController textEditingeConfirmPasswprdController = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
   return 
   
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text(
            'المعلومات الشخصيه',
            style: TextStyle(
              color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
              fontSize: 14,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
             
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomeTxetFormFailed(
            title: 'البريد الإلكتروني', 
            textInputType: TextInputType.emailAddress, 
            textEditingController: textEditingeEmilController,
            suffixicon: IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Color(0xffC9CECF)),
            
            ),
        ),

         SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
            SliverToBoxAdapter(
          child: CustomeTxetFormFailed(
            title: ' اسم المستخدم', 
            textInputType: TextInputType.emailAddress, 
            textEditingController: textEditingeNameController,
            suffixicon: IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Color(0xffC9CECF)),
            
            ),
        ),
          SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),

        ),
 SliverToBoxAdapter(
          child: Text(
  'تغيير كلمة المرور',
  style: TextStyle(
    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
    fontSize: 14,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    
  ),
),

        ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 16,
        ),
      ),  

      SliverToBoxAdapter(
        child: PasswordTextFailed(textcontrrolpassword: textEditingePasswprdController,),
      ),
       SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),

          
      SliverToBoxAdapter(
        child: PasswordTextFailed(textcontrrolpassword: textEditingeNewPasswprdController,),
      ),
       SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),

          SliverToBoxAdapter(
        child: PasswordTextFailed(textcontrrolpassword: textEditingeConfirmPasswprdController,),
      ),
       SliverToBoxAdapter(
          child: SizedBox(
            height: 64,
          ),
        ),
          SliverToBoxAdapter(
          child: Customebottun(onpressed: (){}, title: "حفظ التغييرات"), 
        ),
      ],
     ),
   );
    
  }
}