import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
import 'package:meta/meta.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  AuthRepo authRepo;

  LogoutCubit({required this.authRepo}) : super(LogoutInitial());

  Future<void> logout() async {
    emit(LogoutLoading());
    var reslut = await authRepo.signOut();
    reslut.fold(
      (failer) => emit(LogoutError(message: failer.massage)),
      (userEntitie) => emit(LogoutSuccess()),
    );
    emit(LogoutSuccess());
  }
}
