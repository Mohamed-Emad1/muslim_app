import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/Features/home/data/models/prayer_times_model/prayer_times_model.dart';
import 'package:muslim_app/core/utils/api_service.dart';

abstract class PrayerTimesRemote {
  Future<List<PrayerTimeEntity>> getPrayerTimes(
      {required String endPoint, required double latitude,
      required double longitude});
}

class PrayerTimesRemoteImpl implements PrayerTimesRemote {
  final ApiService _apiService;

  PrayerTimesRemoteImpl({required ApiService apiService})
      : _apiService = apiService;
  @override
  @override
  Future<List<PrayerTimeEntity>> getPrayerTimes(
      {required String endPoint,
      required double latitude,
      required double longitude}) async {
    var response = await _apiService.getPrayerTimes(
        endPoint: "$endPoint?latitude=$latitude&longitude=$longitude");

    List<PrayerTimeEntity> prayerTimes = getPrayerTimesModel(response);

    return prayerTimes;
  }


    List<PrayerTimeEntity> getPrayerTimesModel(Map<String, dynamic> respose) {
    List<PrayerTimeEntity> prayerTimes = [];
    for (var item in respose.values) {
      prayerTimes.add(PrayerTimesModel.fromJson(item));
    }
    return prayerTimes;
  }
  

}
