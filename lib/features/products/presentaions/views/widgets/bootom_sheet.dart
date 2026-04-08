import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/range_Silder.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/textfailed_of_sort.dart';

class BootomSheet  {
  
  
  void showBootomSheet(context){
  
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context, 
      builder: (context){
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Container(
              height: MediaQuery.sizeOf(context).height * 0.35,
              width: double.infinity,
              color: Colors.white,
            child: Column(
             
              children: [
                SizedBox(height: 8,),
                Divider(
                  thickness: 4,
                  color: const Color(0xFF181001),
                  indent: 150,
                  endIndent: 150,
                ),
                SizedBox(height: 24,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                     ":" 'تصنيف حسب ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                      fontSize: 19,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
          SizedBox(height: 24,),
                Row(
                  children: [
                    Icon(Icons.local_offer_outlined, color: Color(0xFF181001), size: 20,),
                    SizedBox(width: 4,),
                     Text(
                'السعر :',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF181001) /* Orange-950 */,
                  fontSize: 13,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextfailedOfSort(
                
                  
                ),
                SizedBox(width: 16,),
                 Text(
  'الي',
  style: TextStyle(
    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
                SizedBox(width: 16,),
                TextfailedOfSort(
                
                  
                ),
              ],
            ),
            SizedBox(height: 24,),
          CustomRangeSlider(),
           SizedBox(height: 12,),
           Customebottun(onpressed:(){
              Navigator.pop(context);
           } , title: "تصفيه"),
           SizedBox(height: 12,),
           ], ),
          ),
        );
      }
      );
  }
}