import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/features/home/domain/entites/Bootom_Navgationbar_entites.dart';

class CustomeBootomNavgaitonbar extends StatefulWidget {
  @override
  State<CustomeBootomNavgaitonbar> createState() =>
      _CustomeBootomNavgaitonbarState();
}

class _CustomeBootomNavgaitonbarState extends State<CustomeBootomNavgaitonbar> {
  int indexslected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: bootomNavgationbarEntites.asMap().entries.map((e) {
          var index = e.key;

          var enetie = e.value;

          return Expanded(
            flex: index == indexslected ?3 :2,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  indexslected=index;
                });
              },
              child: BootomNavgaitonbaritem(
                isslected: indexslected == index,
                bootomNavgationbarEntites: enetie,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  final String image;
  InActiveItem({required this.image});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

class BootomNavgaitonbaritem extends StatelessWidget {
  final BootomNavgationbarEntites bootomNavgationbarEntites;
  final bool isslected;
  BootomNavgaitonbaritem({
    required this.isslected,
    required this.bootomNavgationbarEntites,
  });

  @override
  Widget build(BuildContext context) {
    return isslected
        ? ActiveItem(
            image: bootomNavgationbarEntites.activeimage,
            name: bootomNavgationbarEntites.name,
          )
        : InActiveItem(image: bootomNavgationbarEntites.inactiveimage);
  }
}

class ActiveItem extends StatelessWidget {
  final String image;
  final String name;
  ActiveItem({required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 4),
      padding: EdgeInsets.only(right: 16,left: 5),
      width: 81,
      height: 30,
      decoration: ShapeDecoration(
        color: const Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
       
          AnimatedContainer(
           duration: Duration(milliseconds: 4),
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: const Color(0xFF1B5E37),
              shape: OvalBorder(),
            ),
            child: Center(child: SvgPicture.asset(image)),
          ),
        
          SizedBox(width:6),
    
          Text(name, style: TextStyles.semiBold11),
        ],
      
      ),
    );
  }
}
