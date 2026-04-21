import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogoutItem extends StatelessWidget {
 final void Function() onTap;
  LogoutItem({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
      color: const Color(0xFFEBF9F1) /* Green1-50 */,
      borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Text(
            'تسجيل الخروج',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF1B5E37) /* Green1-500 */,
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
             
            ),
          ),
        SizedBox(
          width: 85,
        ),
        Icon(Icons.logout,
        color: const Color(0xFF1B5E37),
        size: 24, ),
        ],
      ),
      ),
    );
    
  }
}