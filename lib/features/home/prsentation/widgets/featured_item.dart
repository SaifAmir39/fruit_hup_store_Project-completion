import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup_store/core/utils/app_images.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/featured_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'as svg;
class FeaturedItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
  return SizedBox(
    width:width ,
    child:AspectRatio(
      aspectRatio:342/158 ,
      child: Stack(
        children: [
          Positioned(child:SvgPicture.asset(Assets.imagesPageViewItem2Image,fit: BoxFit.fill,),
         
           right: 0,
           bottom: 
           0,
           left: width*.4,
          top: 0,
          ),
          
      
          Container(
            
            width: width *.5,
            decoration: BoxDecoration(
              image: DecorationImage(image:svg.Svg(Assets.imagesFeaturedItemBackground),fit: BoxFit.fill)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                         SizedBox(height: 25,),
                       Text("عروض العيد",style: TextStyles.regular13.copyWith(color: Colors.white),),
                    
                         Spacer(),
                        Text("خصم25%",
                        style: TextStyles.bold19.copyWith(color: Colors.white),),
               SizedBox(height:11,),  
              FeaturedButton (),
              SizedBox(height: 29,),
              ],),
            ),
          )
          
         
        ],
      ),
    ) ,
  );

  }
}