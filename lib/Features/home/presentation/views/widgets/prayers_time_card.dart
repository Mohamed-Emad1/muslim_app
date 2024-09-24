import 'package:flutter/material.dart';
import 'package:muslim_app/core/utils/styles.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({
    super.key,
    required this.time,
    required this.prayerName,
  });

  final String time, prayerName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsStyles.prayerTimesCard,
        ),
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time,
              style: Styles.textStyle10,
            ),
            const SizedBox(
              height: 7,
            ),
            Image.asset(AssetsData.mosque),
            const SizedBox(
              height: 7,
            ),
            Text(
              prayerName,
              style: Styles.textStyle8,
            ),
          ],
        ),
      ),
    );
  }
}
