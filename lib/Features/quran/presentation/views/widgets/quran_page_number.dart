import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class QuranPageNumber extends StatelessWidget {
  const QuranPageNumber({super.key, required this.page});

  final String page;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsStyles.prayerTimesCard,
      ),
      child: Text(
        page,
        textAlign: TextAlign.center,
      ),
    );
  }
}
