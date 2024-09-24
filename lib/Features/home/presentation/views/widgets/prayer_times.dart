import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/prayer_times_list_view.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, top: 24),
      child: Container(
        height: 147,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            border: Border.all(color: ColorsStyles.prayerTimesCard, width: 2)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 7,
              ),
              Text(
                "Cairo, Egypt",
                style: Styles.textStyle15.copyWith(color: ColorsStyles.black),
              ),
              const SizedBox(
                height: 18,
              ),
              const PrayerTimesListView(),
            ],
          ),
        ),
      ),
    );
  }
}
