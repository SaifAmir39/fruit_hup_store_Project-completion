import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';

class WhoeUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
    appBar: bulid_Appbar(title: "من نحن", context: context),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
          padding: const EdgeInsets.all(16),
       
        decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      shadows: [
        BoxShadow(
          color: Color(0x337090B0),
          blurRadius: 40,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
        ),
      child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
  
  height: 107,
  child: Text(
    'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص',
    textAlign: TextAlign.justify,
    style: TextStyle(
      color: const Color(0xFF949D9E) /* Grayscale-400 */,
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
      height: 1.60,
    ),
  ),
),
SizedBox(
  height: 4,
),
SizedBox(
 
  height: 133,
  child: Text(
    'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص',
    textAlign: TextAlign.justify,
    style: TextStyle(
      color: const Color(0xFF4E5556) ,
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
      height: 1.70,
    ),
  ),
),
SizedBox(
  height: 4,),
   SizedBox(
      
        height: 72,
        child: Text(
          'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. ',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: const Color(0xFF949D9E) /* Grayscale-400 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            height: 1.70,
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
       SizedBox(
      
        height: 133,
        child: Text(
          'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: const Color(0xFF4E5556) /* Grayscale-500 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            height: 1.70,
          ),
        ),
      ),
      SizedBox(
        height: 4,
      ),
        SizedBox(
       
        height: 133,
        child: Text(
          'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: const Color(0xFF4E5556) /* Grayscale-500 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            height: 1.70,
          ),
        ),
        ),
          ],
        ),
      ) ,
      
      ),
      
    )
   );
    
  }
}