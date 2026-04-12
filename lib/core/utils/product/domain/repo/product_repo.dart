import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';

abstract class ProductRepo {
 
 Future<Either<failer,List<Productentity>>> getAllProducts();
 Future<Either<failer,List<Productentity>>> getProductsBustsalleing();
  Future<Either<failer,List<Productentity>>> getCategory();

}