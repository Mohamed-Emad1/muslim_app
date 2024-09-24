import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/assets.dart';

part 'tasbih_state.dart';

class TasbihCubit extends Cubit<TasbihState> {
  TasbihCubit() : super(TasbihInitial());

  final List<String> thekerImages= const [
    AssetsData.firstthekr,
    AssetsData.secondThekr,
    AssetsData.thirdThekr,
    AssetsData.fourthThekr,
  ];
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
  void changeTasbih({required thekerNumber}) {
    emit(TasbihRefreshed());
    emit(TasbihChanged(
      thekr: thekerImages[thekerNumber],
      index: thekerNumber
    ));
  }
  void refreshtasbeih() {
    
    emit(TasbihRefreshed());
  }
}
