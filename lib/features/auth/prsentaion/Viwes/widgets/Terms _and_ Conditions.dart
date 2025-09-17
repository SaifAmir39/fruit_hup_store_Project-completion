// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Customne_checkBox.dart';


class TermsAndconditions extends StatefulWidget {
final ValueChanged<bool> onchange;
  const TermsAndconditions({
    Key? key,
    required this.onchange,
  }) : super(key: key);
  @override
  State<TermsAndconditions> createState() => _TermsAndconditionsState();
}

class _TermsAndconditionsState extends State<TermsAndconditions> {
bool  isTermsAcppeted =false;

@override
  Widget build(BuildContext context) {
     return Row(
       children: [
        CustomneCheckbox( onchecked: (bool value) { 
          widget.onchange(value);
         setState(() {
           isTermsAcppeted =value;
         });
         

         }, ischacked: isTermsAcppeted, ),


       
      SizedBox(width: 16,),

         Column(
          children: [
            
                 Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                        style: TextStyle(
                          color: const Color(0xFF949D9E) /* Grayscale-400 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.70,
                        ),
                      ),
                      TextSpan(
                        text: 'الشروط والأحكام \n',
                        style: TextStyle(
                          color: const Color(0xFF2D9F5D) /* Green1-600 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.70,
                        ),
                      ),
                      TextSpan(
                        text: '',
                        style: TextStyle(
                          color: const Color(0xFF616A6B) /* Grayscale-600 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.70,
                        ),
                      ),
                      TextSpan(
                        text: 'الخاصة بنا',
                        style: TextStyle(
                          color: const Color(0xFF2D9F5D) /* Green1-600 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.70,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                
              
            ),
          ],
             ),
       ],
     );
  }
}