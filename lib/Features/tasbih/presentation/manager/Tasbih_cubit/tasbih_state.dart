part of 'tasbih_cubit.dart';

@immutable
sealed class TasbihState {}

final class TasbihInitial extends TasbihState {}
final class TasbihFinished extends TasbihState {

}
final class TasbihCounter extends TasbihState {
    final int counter;
  TasbihCounter({required this.counter});
}
final class TasbihRefreshed extends TasbihState {}
final class TasbihChanged extends TasbihState {}
