// ... imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/cubits/signup_cubit_cubit.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Signup_viwe_body.dart';

class SignupViwe extends StatelessWidget {
  static const String routeName = "Signup Viwe";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubitCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: bulid_Appbar(title: 'حساب جديد', context: context),
        body: BlocConsumer<SignupCubitCubit, SignupCubitState>(
          listener: (context, state) {
            if (state is SignupCubitSucess) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.primaryColor,
                  content: Text(
                    "تم التسجيل بنجاح من فضلك قم بتسجيل الدخول",
                    style: TextStyles.bold16,
                  ),
                ),
              );
            }
            else if (state is SignupCubitfailer) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errormasge.toString()),
                ),
              );
            }
          },
          
          builder: (context, state) {
            return Stack(
              children: [
                SignupViweBody(),
                if (state is SignupCubitLodeing)
                  Container(
                    color: Colors.black.withOpacity(0.3),
                    child: const Center(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}