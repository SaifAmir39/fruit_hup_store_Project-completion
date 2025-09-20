import 'package:bloc/bloc.dart';
import 'package:fruit_hup_store/features/auth/domain/entities/user%20_entitie.dart';
import 'package:fruit_hup_store/features/auth/domain/repoes/auth_repo.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
AuthRepo authRepo;
  
SignInCubit({required this.authRepo}) : super(SignInInitial());

Future<void>Siginwithemailanpassword(String emil, String password)async{
emit(SignInloading());
final reslut = await authRepo.signinuserwithanemailandpassword(emil, password);

reslut.fold(
  (failer) => emit(SignInfailer(errormassge: failer.massage)),
  (userEntitie) => emit(SignInsucess(userentitie: userEntitie)),  
  );
 
}
Future<void>siginwithgooale()async{
emit(SignInloading());

final reslut=await authRepo.signInWithGoogle();


reslut.fold(
  (failer) => emit(SignInfailer(errormassge: failer.massage)),
  (userEntitie) => emit(SignInsucess(userentitie: userEntitie)),  
  );
  



}





}
