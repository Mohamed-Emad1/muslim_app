part of 'doa_cubit.dart';

@immutable
sealed class DoaState {}

final class DoaInitial extends DoaState {}
final class DoaLoading extends DoaState {}
final class DoaSuccess extends DoaState {
  final List<DoaEntity> doas;

  DoaSuccess(this.doas);
  
}
final class DoaFailure extends DoaState {
  final String errorMessage;

  DoaFailure(this.errorMessage);
}
