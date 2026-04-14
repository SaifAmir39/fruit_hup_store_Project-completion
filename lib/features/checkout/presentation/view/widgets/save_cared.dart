// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Customne_checkBox.dart';


class SaveCared extends StatefulWidget {
final ValueChanged<bool> onchange;
  const SaveCared({
    Key? key,
    required this.onchange,
  }) : super(key: key);
  @override
  State<SaveCared> createState() => _SaveCaredState();
}

class _SaveCaredState extends State<SaveCared> {
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
            
               Text(
                   'جعل البطاقة افتراضية',
                   textAlign: TextAlign.right,
                   style: TextStyle(
                     color: const Color(0xFF616A6B) /* Grayscale-600 */,
                     fontSize: 13,
                     fontFamily: 'Cairo',
                     fontWeight: FontWeight.w600,
                     height: 1.70,
                   ),
                 ),
               
          ],
             ),
       ],
     );
  }
}