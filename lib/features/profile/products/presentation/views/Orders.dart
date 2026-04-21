import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/manger/bloc/order_bloc.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/order_view_body.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bulid_Appbar(title: "طلباتي", context: context),
      body: BlocProvider(
        create: (context) => OrderBloc(orderRepo: getIt.get<OrderRepo>(),),
        child: OrderViewBody(),
      ),
    );
  }
}
