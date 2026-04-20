import 'package:flutter/material.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/active_dote.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/inactive_dote.dart';

class ShapingItem  extends StatefulWidget{
 bool iscardit=false;
 void Function() onTap;
  bool isselected=false;
  double totleprice;
  ShapingItem({required this.iscardit, required this.onTap,required this.isselected,required this.totleprice});

  @override
  State<ShapingItem> createState() => _ShapingItemState();

}

class _ShapingItemState extends State<ShapingItem> {
 
 
 
 
 
 
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 16,
          left: 13,
          right: 28,
          bottom: 16,
        ),
        clipBehavior: Clip.antiAlias,
       decoration: ShapeDecoration(
          color: Color(0x33D9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              width: 2,
              color:widget.isselected ? const Color(0xFF3A8B33) : Colors.transparent,
            ),
          ),
        ),
        
        child: Row(
          children: [
            widget.isselected?ActiveDote():InactiveDote(),
      
            const SizedBox(width: 10),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                  widget.iscardit? "اشتري الان وادفع لاحقا" :'الدفع عند الاستلام',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                      height: 1.70,
                    ),
                  ),
                  Text(
                   widget.iscardit? "يرجي تحديد طريقه الدفع" :'التسليم من المكان',
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.50),
                      fontSize: 13,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  ),
                ],
              ),
            ),
      
             Text(
            widget.iscardit? "${widget.totleprice} +الشحن مجاني " :'${widget.totleprice}+ (مصاريف الشحن) 40 جنيه ',
              style: TextStyle(
                color: Color(0xFF3A8B33),
                fontSize: 13,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}