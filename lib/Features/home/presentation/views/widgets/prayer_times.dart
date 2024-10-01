import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/home/presentation/manager/prayer_times_cubit/prayer_times_cubit.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/location_title.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/prayer_times_list_view.dart';
import 'package:muslim_app/core/widgets/custom_loading_indicator.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_failure_message.dart';

class PrayerTimes extends StatelessWidget {
  const PrayerTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimesCubit, PrayerTimesState>(
      builder: (context, state) {
        if (state is PrayerTimesFailure) {
          return CustomFailureMessage(data: state.errorMessage);
        } else if (state is PrayerTimesSuccess) {
          return Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 24),
            child: Container(
              height: 147,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border:
                    Border.all(color: ColorsStyles.prayerTimesCard, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: 160,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorsStyles.prayerTimesCard,
                      ),
                      child: LocationTitle(
                        location: state.prayerTimes[0].location,
                      ),
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
        } else {
          return const SizedBox(
            height: 20,
          );
        }
      },
    );
  }
}
