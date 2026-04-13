import 'package:flutter/material.dart';

class ActiveDote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
              width: 18,
              height: 18,
              padding: const EdgeInsets.all(8),
              decoration:  ShapeDecoration(
                color:  const Color(0xFF3A8B33),
                shape: OvalBorder(
                  side: BorderSide(
                    width: 2,
                    color:  Color(0xFF949D9E),
                  ),
                ),
              ),
            );
  
  }
}