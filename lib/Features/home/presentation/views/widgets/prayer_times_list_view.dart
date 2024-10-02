import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/data/entities/prayer_time_entity.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/prayers_time_card.dart';

class PrayerTimesListView extends StatelessWidget {
  const PrayerTimesListView({
    super.key,
    required this.prayerTimeEntity,
  });

  final PrayerTimeEntity prayerTimeEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 79,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return PrayerTimeCard(
            prayerName: (index == 0)
                ? 'fajr'
                : (index == 1)
                    ? 'dhuhr'
                    : (index == 2)
                        ? 'asr'
                        : (index == 3)
                            ? 'maghrib'
                            : (index == 4)
                                ? 'isha'
                                : '',
            time: (index == 0)
                ? prayerTimeEntity.prayerNamesAndTimes.fajr ?? ''
                : (index == 1)
                    ? prayerTimeEntity.prayerNamesAndTimes.dhuhr ?? ''
                    : (index == 2)
                        ? prayerTimeEntity.prayerNamesAndTimes.asr ?? ''
                        : (index == 3)
                            ? prayerTimeEntity.prayerNamesAndTimes.maghrib ?? ''
                            : (index == 4)
                                ? prayerTimeEntity.prayerNamesAndTimes.isha ??
                                    ''
                                : '',
          );
        },
      ),
    );
  }
}
