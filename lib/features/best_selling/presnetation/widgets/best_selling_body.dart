import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/widgets/custome_bestselling_appbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';

class BestSellingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return 
   Padding(
           padding: const EdgeInsets.only(left: 16, right: 16, top: 16),

     child: Scaffold(
        
        body:
        CustomScrollView(
          slivers: [
           SliverToBoxAdapter( 
          child: 
            CustomeBestsellingAppbar(),
            
           ),
              
             SliverToBoxAdapter( 
          child: SizedBox(
              height: 28,
             
            ),
             ),
            
             SliverToBoxAdapter( 
          child: Align(
              alignment: Alignment.centerRight,
           child:  Text(
              "الأكثر مبيعًا",
              textAlign: TextAlign.right,
              style: TextStyles.bold16,
            
           ),
              ),
             ),
              SliverToBoxAdapter( 
          child:
              SizedBox(
                height: 8,
              ),
              ),
              
             
            BestSalingGridviwe(),
          ],
          ),
            

          
        ),
       
   );
    
    
      
      
   
    
  }
} 