import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bootomsheet_state.dart';

class BootomsheetCubit extends Cubit<BootomsheetState> {
  BootomsheetCubit() : super(BootomsheetInitial());

 void changeUi(bool isPrice) {
    if (isPrice) {
      emit(BootomSheetisinPriceState());
    } else {
      emit(BootomSheetisinSortState());
    }
  }
}
