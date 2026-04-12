import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/features/products%20detailes/presentation/views/products_viwe.dart';


class CatrogyItem  extends StatelessWidget{
 final Productentity productentity;
  CatrogyItem({required this.productentity});
  @override
  Widget build(BuildContext context) {
   return   Column(
     children: [
       GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsViwe( product: productentity,)));
          },
         child: Container(
            width:72,
            height: 64,
            decoration: ShapeDecoration(
              color: const Color(0xFFF3F5F7),
              shape: OvalBorder(),
              
            ),
            child:Image.network("${productentity.image}",fit: BoxFit.cover,
            
            errorBuilder: (context, error, stackTrace) {
                            return 
                           Icon(Icons.error,color: Colors.red,);
                          },
            ),
            
            
            
          ),
       ),
     SizedBox(height: 8,),
     Text(
  '${productentity.name}',
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