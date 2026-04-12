import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/product/domain/repo/product_repo.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/custome_App_bar.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/category_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/productes_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/productes_viwe_body.dart';

class ProductesViwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductesBloc>(
          create: (context) => ProductesBloc(productRepo: getIt<ProductRepo>()),
          
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(productRepo: getIt<ProductRepo>()),
          
        ),
      ],
      child: Scaffold(
        appBar: CustomeAppbar(title: "المنتجات", context: context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ProductesViweBody(),
        ),
      ),
    );
  }
}
