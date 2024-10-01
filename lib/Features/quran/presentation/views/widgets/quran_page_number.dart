import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class QuranPageNumber extends StatelessWidget {
  const QuranPageNumber({super.key, required this.page});

  final String page;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsStyles.prayerTimesCard,
      ),
      child: Center(
        child: Text(
          page,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
