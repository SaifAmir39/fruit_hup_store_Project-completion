import 'package:fruit_hup_store/core/service/Database_service.dart';
import 'package:fruit_hup_store/core/service/auth_service.dart';
import 'package:fruit_hup_store/core/service/firebase_firestoresevice.dart';
import 'package:fruit_hup_store/core/utils/product/data/repo/product_repo_implemention.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:fruit_hup_store/features/auth/data/repos/auth_repo_implementions.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
import 'package:fruit_hup_store/features/checkout/data/repo/order_repo_implementiom.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerSingleton<DatabaseService>(FirebaseFirestoresevice());
 
 
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImplementions(
      authService: getIt<AuthService>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );

getIt.registerSingleton<ProductRepo>(ProductRepoImplemention(databaseService: getIt<DatabaseService>()));
getIt.registerSingleton<OrderRepo>(OrderRepoImplementiom(databaseService: getIt<DatabaseService>()));
}
