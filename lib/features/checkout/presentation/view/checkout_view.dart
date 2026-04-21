import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/features/cart/domain/entitis/cart_entiti.dart';
import 'package:fruit_hup_store/features/checkout/domain/repo/order_repo.dart';
import 'package:fruit_hup_store/features/checkout/presentation/manger/check_out_cubit.dart';
import 'package:fruit_hup_store/features/checkout/presentation/view/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  final CartEntiti cartEntiti;

  CheckoutView({Key? key, required this.cartEntiti}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutCubit(orderRepo: getIt.get<OrderRepo>())..getOrderitems(items: cartEntiti),
      child: Scaffold(body: CheckoutViewBody(cartEntiti: cartEntiti,)),
    );
  }
}
