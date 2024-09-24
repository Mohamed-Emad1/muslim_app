import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tasbih_state.dart';

class TasbihCubit extends Cubit<TasbihState> {
  TasbihCubit() : super(TasbihInitial());

  void counterTasbih({required counter}) {

    if (counter < 100) {
    emit(TasbihCounter(
      counter: counter
    ));
      
    }
    else if (counter == 100) {
      emit(TasbihFinished(
      ));
    }

  }
  void changeTasbih() {
    emit(TasbihChanged());
  }
  void refreshtasbeih() {
    emit(TasbihRefreshed());
  }
}
