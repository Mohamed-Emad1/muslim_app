import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';

import 'date.dart';
import 'meta.dart';
import 'timings.dart';

class PrayerTimesModel extends PrayerTimeEntity{
  Timings? timings;
  Date? date;
  Meta? meta;

  PrayerTimesModel({this.timings, this.date, this.meta}):super(prayerNamesAndTimes: timings!, location: meta?.timezone.toString().substring(meta.timezone.toString().indexOf("/") ) ?? '' );

  factory PrayerTimesModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimesModel(
      timings: json['timings'] == null
          ? null
          : Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'timings': timings?.toJson(),
        'date': date?.toJson(),
        'meta': meta?.toJson(),
      };
}
