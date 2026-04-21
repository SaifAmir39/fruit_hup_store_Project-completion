import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';

abstract class ProductRepo {
 
 Future<Either<failer,List<Productentity>>> getAllProducts();

 Future<Either<failer,List<Productentity>>> getProductsBustsalleing();
  Future<Either<failer,List<Productentity>>> getCategory();
  Future<Either<failer,List<Productentity>>> getProductesByFilter(
    {
       required double minimum,required double maximum,required bool orderby
    }
    
  );
  Future<Either<failer,List<Productentity>>> SearchProduct({required String productname});
Future<Either<failer,void>> addProducttoFavorites({required Productentity productentity});
 Future<Either<failer,List<Productentity>>> getFavoritesProducts();

}