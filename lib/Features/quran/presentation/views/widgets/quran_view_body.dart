import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/showAyat_model.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/surah_title.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SurahNameWidget(
          surahName: "سُورَةُ ٱلْفَاتِحَةِ",
          surahNumber: "1",
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ShowSurahAyat(),
        ),
      ],
    );
  }
}

