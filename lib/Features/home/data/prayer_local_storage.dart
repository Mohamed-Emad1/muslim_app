import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';

abstract class PrayerLocalStorage {
  List<PrayerTimeEntity> getPrayerTimes();
}

class PrayerLocalStorageImpl implements PrayerLocalStorage {
  @override
  List<PrayerTimeEntity> getPrayerTimes() {
    // TODO: implement getPrayerTimes
    throw UnimplementedError();
  }
}