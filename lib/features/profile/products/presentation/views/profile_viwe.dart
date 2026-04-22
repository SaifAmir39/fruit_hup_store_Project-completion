import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/cubits/logout_cubit.dart';
import 'package:fruit_hup_store/features/profile/products/presentation/widgets/profile_viwe_body.dart';

class ProfileViwe extends StatelessWidget {
  static const routeName = 'profileviwe';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Color(0xffF9F9F9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'حسابي',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
              fontSize: 19,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: ProfileViweBody(),
      ),
    );
  }
}
