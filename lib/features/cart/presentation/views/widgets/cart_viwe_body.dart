import 'package:flutter/widgets.dart';

class CartViweBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16,),
        Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 10),
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    color: const Color(0xFFEBF9F1) /* Green1-50 */,
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 8,
    children: [
      Text(
        'لديك 3 منتجات في سله التسوق',
        style: TextStyle(
          color: const Color(0xFF1B5E37) /* Green1-500 */,
          fontSize: 13,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 1.60,
        ),
      ),
    ],
  ),
),
SizedBox(height: 24,),


               
        ],
      ),
    );
  }
}