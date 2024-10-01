import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/quran_page_number.dart';
import 'package:muslim_app/core/utils/styles.dart';

class ShowSurahAyat extends StatelessWidget {
  const ShowSurahAyat({super.key});

  @override
  Widget build(BuildContext context) {
    // String concatenatedAyahs = ayahs.join(" ");
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, bottom: 12),
      child: Container(
        width: width * 0.99,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Column(
          children: [
            Text(
              "الاية",
              style: Styles.textStyle16, // Adjust font size as needed
              textAlign: TextAlign.justify, // Justify text for better alignment
            ),
            QuranPageNumber(
              page: "1",
            ),
          ],
        ),
      ),
    );
  }
}


