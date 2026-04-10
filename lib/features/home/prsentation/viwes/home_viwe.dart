import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:fruit_hup_store/features/home/prsentation/manger/bloc/home_bloc.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/home_viwe_body.dart';

class HomeViwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),

      child: BlocProvider(
        create: (context) => HomeBloc(productRepo: getIt.get<ProductRepo>()),
        child: HomeViweBody(),
      ),
    );
  }
}
