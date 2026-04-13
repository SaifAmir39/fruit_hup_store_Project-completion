import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/shaping_item.dart';

class ShapingSections extends StatefulWidget {
  
  @override
  State<ShapingSections> createState() => _ShapingSectionsState();
}

class _ShapingSectionsState extends State<ShapingSections> {
  int selectedIndex = -1;

  @override
  
  
  Widget build(BuildContext context) {
   


    return Column(
     
      children: [
        ShapingItem(iscardit: true, onTap: () { 
            selectedIndex = 0;
            (context as Element).markNeedsBuild();
         },isselected: selectedIndex == 0,),
        SizedBox(height: 16,),
        ShapingItem(iscardit: false, onTap: () {  
            selectedIndex = 1;
            (context as Element).markNeedsBuild();
        },isselected: selectedIndex == 1,),
      ],
    );
    
  }
}