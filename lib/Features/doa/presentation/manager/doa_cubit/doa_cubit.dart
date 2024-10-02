import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:muslim_app/Features/doa/data/entities/doa_entity.dart';
import 'package:muslim_app/Features/doa/data/repos/doa_repo.dart';

part 'doa_state.dart';

class DoaCubit extends Cubit<DoaState> {
  DoaCubit(this.doaRepo) : super(DoaInitial());
  final DoaRepo doaRepo;

  Future<void> getDoa() async {
    emit(DoaLoading());
    var result = await doaRepo.getDoa();
    result.fold(
      (failure) => emit(DoaFailed(failure.message)),
      (doas) => emit(DoaSuccess(doas)),
    );
  }
}
