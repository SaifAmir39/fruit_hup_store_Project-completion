import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/get%20user.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
          title: Text(
  "${ getinfouserdata().name}",
  style: TextStyle(
    color: const Color(0xFF131F46),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  ),
),
subtitle: Text(
  '${ getinfouserdata().email}',
  style: TextStyle(
    color: const Color(0xFF888FA0),
    fontSize: 14,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
    
  ),
),

          );
  
  }
}