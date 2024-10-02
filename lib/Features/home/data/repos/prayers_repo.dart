import 'package:dartz/dartz.dart';
import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/core/errors/failure.dart';

abstract class PrayersRepo {
  Future<Either<Failure, List<PrayerTimeEntity>>> getPrayerTimes(
      {required double latitude, required double longitude});
}
