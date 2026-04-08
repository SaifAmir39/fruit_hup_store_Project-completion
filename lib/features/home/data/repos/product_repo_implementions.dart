import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/features/home/domain/entites/product_entites.dart';
import 'package:fruit_hup_store/features/home/domain/repos/product_repo.dart';

class ProductRepoImplementions implements ProductRepo {
  DatabaseService databaseService = getIt<DatabaseService>();
  @override
  Future<Either<failer, List<ProductEntity>>> getallbestsaleingproducts() {
  



    throw UnimplementedError();
  }

  @override
  Future<Either<failer, List<ProductEntity>>> getallproducts(){
    
     throw UnimplementedError();       
   
  }




}