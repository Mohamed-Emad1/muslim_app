import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/prayers_time_card.dart';

class PrayerTimesListView extends StatelessWidget {
  const PrayerTimesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 79,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const PrayerTimeCard(
            prayerName: "Prayer Name",
            time: "Time",
          );
        },
      ),
    );
  }
}
