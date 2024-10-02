import 'package:muslim_app/Features/home/data/models/prayer_times_model/timings.dart';

class PrayerTimeEntity {
  final Timings prayerNamesAndTimes;

  final String location;
  PrayerTimeEntity({required this.prayerNamesAndTimes, required this.location});
}
