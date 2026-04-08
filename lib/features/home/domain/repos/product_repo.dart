import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/features/home/domain/entites/product_entites.dart';

abstract class  ProductRepo {
Future<Either<failer,List<ProductEntity>>>getallproducts();
Future<Either<failer,List<ProductEntity>>>getallbestsaleingproducts();
    



}

