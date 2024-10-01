part of 'quran_cubit.dart';

@immutable
sealed class QuranState {}

final class QuranInitial extends QuranState {}
final class QuranLoading extends QuranState {}
final class QuranSuccess extends QuranState {
  final List<SurahModel> surahs;

  QuranSuccess(this.surahs);
}
final class QuranFailure extends QuranState {
  final String errorMessage;

  QuranFailure(this.errorMessage);
}
