import 'package:flutter/material.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/showAyat_model.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/surah_title.dart';

class QuranPageListView extends StatelessWidget {
  const QuranPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: 604,
        itemBuilder: (context, index) {
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
        },
      ),
    );
  }
}
