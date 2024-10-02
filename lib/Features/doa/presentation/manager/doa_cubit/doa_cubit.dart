import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:muslim_app/Features/doa/data/entities/doa_entity.dart';

part 'doa_state.dart';

class DoaCubit extends Cubit<DoaState> {
  DoaCubit() : super(DoaInitial());
}
