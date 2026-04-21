

import 'package:fruit_hup_store/features/checkout/data/models/order_productes_modle.dart';
import 'package:fruit_hup_store/features/checkout/data/models/shaiping_Addres_modle.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/address_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';
import 'package:uuid/uuid.dart';

class OrderModel {
String id;  
String uid;
String status;
final double total;
final ShaipingAddresModle address;

final List<OrderProductesModle> products;
final int PaymentMethod;

OrderModel({
  required this.id,
  required this.uid,
  this.status = "pending",
  required this.total,
  required this.address,
  required this.products,
  required this.PaymentMethod
});

factory OrderModel.fromentitis(OrderEntiti orderEntiti){
return OrderModel(
  
  uid: orderEntiti.uiID??"",
  total: orderEntiti.orderItems!.calculatetotalprice(),
  address: ShaipingAddresModle.fromentitis(
  orderEntiti.addressEntiti ?? AddressEntiti()
),
  products:
      orderEntiti.orderItems!.cartItems.map((e) => OrderProductesModle.fromentitis(e)).toList(),
  PaymentMethod: orderEntiti.ispymentmethod??0, id: Uuid().v4(),
);

}
factory OrderModel.fromjson(Map<String,dynamic>json){
return OrderModel(

  id: json["id"] ?? "",
  uid: json["uid"] ?? "",
  total: (json["total"] as num?)?.toDouble() ?? 0.0,
  status: json["status"] ?? "",
  address: ShaipingAddresModle.fromjson(json["address"] ?? {}),
  products: (json["products"] as List?)?.map((e) => OrderProductesModle.fromjson(e)).toList() ?? [],
  PaymentMethod: json["paymentMethod"] ?? 0,
);
}
OrderEntiti toEntiti() {
  return OrderEntiti(
    id: id,
    status: status,
    uiID: uid,
    totalPrice: total,
    
    orderPorductes: products.map((e) => e.toentiti()).toList(),
    addressEntiti: address.toentites(),
    ispymentmethod: PaymentMethod,
  );
} 
toJson() {
  return {
    "id": id,
    "uid": uid,
    "status": status,
    "total": total,
    "address": address.tojson(),
    "products": products.map((e) => e.tojson()).toList(),
    "paymentMethod": PaymentMethod,
  };
}

}