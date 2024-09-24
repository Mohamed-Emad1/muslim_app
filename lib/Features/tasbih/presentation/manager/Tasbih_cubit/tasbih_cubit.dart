import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tasbih_state.dart';

class TasbihCubit extends Cubit<TasbihState> {
  TasbihCubit() : super(TasbihInitial());
}
