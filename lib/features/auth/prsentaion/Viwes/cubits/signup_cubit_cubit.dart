import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';

part 'signup_cubit_state.dart';

class SignupCubitCubit extends Cubit<SignupCubitState> {
  final AuthRepo authRepo;
  SignupCubitCubit({required this.authRepo}) : super(SignupCubitInitial());

  Future<void> createuserwithemailanpassword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignupCubitLodeing());
    final reslut = await authRepo.createuserwithemailanpassword(
      email,
      password,
      name

    );

   reslut.fold(
  (failer) => emit(SignupCubitfailer(errormasge: failer.massage)),
  (userEntitie) => emit(SignupCubitSucess(user: userEntitie)),
);

  }
}
