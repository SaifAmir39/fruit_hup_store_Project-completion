import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CatrogyItem  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return   Column(
     children: [
       Container(
          width: 64,
          height: 64,
          decoration: ShapeDecoration(
            color: const Color(0xFFF3F5F7),
            shape: OvalBorder(),
            
          ),
          child: SvgPicture.asset("assets/images/image 29.svg"),
        ),
     SizedBox(height: 8,),
     Text(
  'بطيخ',
  textAlign: TextAlign.right,
  style: TextStyle(
    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
    fontSize: 13,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 1.70,
  ),
),
     ],
     
   );
   
  }
}