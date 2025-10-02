
import 'package:fruit_hup_store/core/utils/app_images.dart';

class BootomNavgationbarEntites   {
final String activeimage ,inactiveimage ;
    final String name;
    BootomNavgationbarEntites({required this.activeimage,required this.inactiveimage ,required this.name});
 

    
}


  List<BootomNavgationbarEntites>get bootomNavgationbarEntites =>[

   BootomNavgationbarEntites(
    activeimage: Assets.imagesVuesaxBoldHome,
    inactiveimage: Assets.imagesVuesaxOutlineHome,
    name: 'الرئيسية',
  ),
  BootomNavgationbarEntites(
    activeimage: Assets.imagesVuesaxBoldProducts,
    inactiveimage: Assets.imagesVuesaxOutlineProducts,
    name: "المنتجات" 
  ),
  BootomNavgationbarEntites(
    activeimage: Assets.imagesVuesaxBoldShoppingCart,
    inactiveimage:Assets.imagesVuesaxOutlineShoppingCart,
    name: "سلة التسوق"
  ),
  BootomNavgationbarEntites(
    activeimage: Assets.imagesVuesaxBoldUser,
    inactiveimage: Assets.imagesVuesaxOutlineUser,
    name: 'حسابي',
  ),




  ];
 
