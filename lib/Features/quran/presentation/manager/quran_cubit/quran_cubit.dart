import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import '../../../data/repo/quran_repo.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit(this._repo) : super(QuranInitial());
  final QuranRepo _repo;

  Future<void> getSurahs() async {
    emit(QuranLoading());
    var result = await _repo.getSurahs();
    result.fold((fauilre) {
      emit(QuranFailure(fauilre.message));
    }, (surahs) {
      emit(QuranSuccess(surahs, 0));
    });
  }
}
