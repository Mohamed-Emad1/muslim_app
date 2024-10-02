import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/Features/home/data/models/prayer_times_model/prayer_times_model.dart';
import 'package:muslim_app/core/utils/api_service.dart';

abstract class PrayerTimesRemote {
  Future<List<PrayerTimeEntity>> getPrayerTimes({required String endPoint});
}

class PrayerTimesRemoteImpl implements PrayerTimesRemote {
  final ApiService _apiService;

  PrayerTimesRemoteImpl({required ApiService apiService})
      : _apiService = apiService;
  @override
  Future<List<PrayerTimeEntity>> getPrayerTimes(
      {required String endPoint}) async {
    var response = await _apiService.getPrayerTimes(endPoint: endPoint);

    List<PrayerTimeEntity> prayerTimes = getPrayerTimesModel(response);

    return prayerTimes;
  }

  List<PrayerTimeEntity> getPrayerTimesModel(Map<String, dynamic> response) {
    List<PrayerTimeEntity> prayerTimes = [];
    var data = response['data'] as Map<String, dynamic>;
    prayerTimes.add(PrayerTimesModel.fromJson(data));
    // for (var item in respose['data']) {
    //   log(item.toString());
    //   prayerTimes.add(PrayerTimesModel.fromJson(item));
    // }
    return prayerTimes;
  }
}
