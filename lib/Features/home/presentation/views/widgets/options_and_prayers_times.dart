import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_navigation_button.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/prayer_times.dart';

import '../../../../../core/utils/colors.dart';

class ParayerTimesAndLocation extends StatelessWidget {
  const ParayerTimesAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorsStyles.optionsAndParyersTimesColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: const Column(
        children: [
          Expanded(
            child: CustomGridView(),
          ),
          PrayerTimes(),
          CustomNavigationButton()
        ],
      ),
    );
  }
}
