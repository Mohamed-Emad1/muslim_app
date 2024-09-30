import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';

class SurahNameWidget extends StatelessWidget {
  const SurahNameWidget(
      {super.key, required this.surahName, required this.surahNumber});

  final String surahName;
  final String surahNumber;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$surahName ($surahNumber)',
        style: Styles.textStyle30,
      ),
    );
  }
}
