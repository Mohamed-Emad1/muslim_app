import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/Features/home/data/repos/prayers_repo.dart';

part 'prayer_times_state.dart';

class PrayerTimesCubit extends Cubit<PrayerTimesState> {
  PrayerTimesCubit(this.prayersRepo) : super(PrayerTimesInitial());
  final PrayersRepo prayersRepo;

  Future<void> getPrayerTimes(
      {required double latitude, required double longitude}) async {
    emit(PrayerTimesLoading());
    var result = await prayersRepo.getPrayerTimes(
        latitude: 30.033333, longitude: 31.233334);
    result.fold((failure) {
      emit(PrayerTimesFailure(failure.message));
    }, (prayerTimes) {
      emit(PrayerTimesSuccess(prayerTimes));
    });
  }
}
