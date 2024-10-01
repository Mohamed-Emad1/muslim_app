import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/Features/home/data/prayer_local_storage.dart';
import 'package:muslim_app/Features/home/data/prayer_times_remote.dart';
import 'package:muslim_app/Features/home/data/repos/prayers_repo.dart';
import 'package:muslim_app/core/errors/failure.dart';

class PrayerRepoImpl extends PrayersRepo {
  final PrayerTimesRemote prayersRepoRemote;
  final PrayerLocalStorage prayerLocalStorageImpl;

  PrayerRepoImpl(
      {required this.prayersRepoRemote, required this.prayerLocalStorageImpl});
  @override
  Future<Either<Failure, List<PrayerTimeEntity>>> getPrayerTimes({required double latitude, required double longitude}) async {
    try {
      var result = prayerLocalStorageImpl.getPrayerTimes();
      if (result.isEmpty) {
        var remoteResult = await prayersRepoRemote.getPrayerTimes(
            endPoint: "?latitude=$latitude&longitude=$longitude",);
        // await quranRepoLocalStorage.saveSurahs(remoteResult);
        return Right(remoteResult);
      } else {
        // log("iam in hive");
        return Right(result);
      }
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return Left(ServerFailure(
            message: "There was an error while fetching the data"));
      }
    }
  }
}
