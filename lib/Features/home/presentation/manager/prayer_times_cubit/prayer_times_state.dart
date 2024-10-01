part of 'prayer_times_cubit.dart';

@immutable
sealed class PrayerTimesState {}

final class PrayerTimesInitial extends PrayerTimesState {}

final class PrayerTimesLoading extends PrayerTimesState {}

final class PrayerTimesSuccess extends PrayerTimesState {
  final List<PrayerTimeEntity> prayerTimes;

  PrayerTimesSuccess(this.prayerTimes);
}

final class PrayerTimesFailure extends PrayerTimesState {
  final String errorMessage;

  PrayerTimesFailure(this.errorMessage);
}
