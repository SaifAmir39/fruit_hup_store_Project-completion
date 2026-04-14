import 'package:dartz/dartz.dart';
import 'package:fruit_hup_store/core/errors/failer.dart';
import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:fruit_hup_store/core/utils/backend_endpoint.dart';
import 'package:fruit_hup_store/features/checkout/data/models/order_model.dart';
import 'package:fruit_hup_store/features/checkout/domain/entitis/order_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';

class OrderRepoImplementiom implements OrderRepo {
  
  final DatabaseService databaseService;

  OrderRepoImplementiom({required this.databaseService});
  
  @override
  Future<Either<failer, void>> createOrder({required OrderEntiti order})async {
     

    try{

     await databaseService.addData(path: BackendEndpoint.addOrder, 
     
     data: OrderModel.fromentitis(order).toJson(), );

   return Right(null);
    }
    catch(e){
      return Left(serverfailererror(e.toString()));
    }



    
  }
}