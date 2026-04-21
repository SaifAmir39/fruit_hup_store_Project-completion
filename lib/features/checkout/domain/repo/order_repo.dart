import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';

abstract class OrderRepo {
Future<Either<failer,void>> createOrder({required OrderEntiti order});
Stream<Either<failer,List<OrderEntiti>>> getOrders();



}