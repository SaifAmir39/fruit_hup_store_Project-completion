import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:fruit_hup_store/core/utils/backend_endpoint.dart';
import 'package:fruit_hup_store/core/utils/product/data/models/product_modle.dart';
import 'package:fruit_hup_store/core/utils/product/domain/entities/product_entities.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';

class ProductRepoImplemention implements ProductRepo {
  DatabaseService databaseService;
  ProductRepoImplemention({required this.databaseService});
  
  @override

 Future<Either<failer, List<Productentity>>> getAllProducts() async{

  try{
  var data = await databaseService.getalldata(path: BackendEndpoint.getProducts);
  print("DATA 😍😍😍: $data");
  List<Productentity> products = data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
  return Right(products);
         
  }
   
  
catch(e){
  print("CRASH ERROR: $e");
  return Left(serverfailererror(e.toString()));
  
}
}
  @override
  Future<Either<failer, List<Productentity>>> getProductsBustsalleing() async{
  try{
  
   var data = await databaseService.getspecificdata(path: BackendEndpoint.getProducts, 
  orderBy: "sellingCount",
  descending: true,
  limit: 10,
  
   );
    print("DATA BUST SALLEING😍😍😍: $data");
   List<Productentity> products = data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
  return Right(products);
  }
  catch(e){
    print("CRASH ERROR BUST SALLEING:🤑🤑🤑🤑  $e");
     return Left(serverfailererror(e.toString()));
  }
   
  }
  
  @override
  Future<Either<failer, List<Productentity>>> getCategory()async {
   try{
    var data =await databaseService.getspecificdata(path: BackendEndpoint.getProducts,
    filters: {
      "isFeatured": true,
    }
    );
    List<Productentity> products = data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
  return Right(products);

   }
    catch(e){
      print("CRASH ERROR GET CATEGORY:🤑🤑🤑🤑  $e");
      return Left(serverfailererror(e.toString()));
    }
  }
  
  @override
  Future<Either<failer, List<Productentity>>> getProductesByFilter({ required double minimum,required double maximum,required bool orderby})async {
   
   try{
    var data =await databaseService.getspecificdata(path: BackendEndpoint.getProducts,
    rangeFilters: {
      "price":{
        "min":minimum,
        "max":maximum,
      }
      
      
      
    },
    orderBy: "price",
    descending: orderby
    );
    List<Productentity> products = data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
  return Right(products);
   }
    catch(e){
      print("CRASH ERROR GET CATEGORY:🤑🤑🤑🤑  $e");
      return Left(serverfailererror(e.toString()));
    }
  }
  
  @override
  Future<Either<failer, List<Productentity>>> SearchProduct({required String productname})async {
    try{

      var data =await databaseService.getspecificdata(path: BackendEndpoint.getProducts,
      filters: {
        "name": productname,
      }
      );
      List<Productentity> products = data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return Right(products);

    }
    catch(e){
  print("CRASH ERROR GET CATEGORY:🎭🎭🎭  $e");
      return Left(serverfailererror(e.toString()));

    }
   
  }
}
 
