import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/service/get_it_service.dart';
import 'package:fruit_hup_store/core/utils/app_colors.dart';
import 'package:fruit_hup_store/core/utils/app_text_styles.dart';
import 'package:fruit_hup_store/core/utils/helper_functions/Custome%20_Appbar.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/cubits/sign_in_cubit.dart';
import 'package:fruit_hup_store/features/auth/prsentaion/Viwes/widgets/Login_viwe_body.dart';
import 'package:fruit_hup_store/features/home/prsentation/viwes/home_viwe.dart';

class LoinViwe extends StatelessWidget {
  static const routeName = "Login_viwe";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(authRepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: bulid_Appbar(title: "تسجيل دخول", context: context),

        body: BlocConsumer<SignInCubit, SignInState>(
          listener: (context, state) {
          


            if (state is SignInsucess){
                   Navigator.pushNamedAndRemoveUntil(context,   HomeViwe.routeName, (route) => false);
             
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.primaryColor,
                  content: Text(
                    "تم التسجيل الدخول بنجاح ",
                    style: TextStyles.bold16,
                  ),
                ),
              );


            }
             else if(state is SignInfailer){
                 ScaffoldMessenger.of(context).showSnackBar(
                  
                SnackBar(
            backgroundColor: Colors.red,

                  content: Text(state.errormassge.toString()),
                ),
              );
              
            }
          },

 
          builder: (context, state) {
           
            return Stack(
              children: [
                LoginViweBody(),
                if (state is SignInloading)
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
