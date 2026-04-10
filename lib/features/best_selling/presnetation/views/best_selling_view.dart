import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:fruit_hup_store/features/best_selling/presnetation/widgets/best_selling_body.dart';
import 'package:fruit_hup_store/features/home/prsentation/manger/bloc/home_bloc.dart';

class BestSellingView extends StatelessWidget {
  static const routeName = "BestSellingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(productRepo: getIt.get<ProductRepo>()),
        child: SafeArea(child: BestSellingBody()),
      ),
    );
  }
}
