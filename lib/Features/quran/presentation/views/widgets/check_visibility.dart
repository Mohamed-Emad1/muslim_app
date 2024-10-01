import 'package:muslim_app/Features/quran/presentation/views/widgets/visibility_result.dart';
import '../../../../../../constants.dart';

class VisibilityChecker {
  Map<int, bool> pageVisibility; // Track visibility status for each page
  Map<int, List<int>> surahForPage; // Track multiple surahs for each page

  VisibilityChecker({
    required this.pageVisibility,
    required this.surahForPage,
  });

  VisibilityResult checkVisibility(int index, int counter) {
    List<int> surahIndexesForPage = [];

    // Check if this page contains one or more Surahs
    for (int i = 0; i < kSurahStartingPages.length; i++) {
      if (kSurahStartingPages[i] == index + 1) {
        surahIndexesForPage.add(i);
      }
    }

    if (surahIndexesForPage.isNotEmpty) {
      pageVisibility[index] = true;
      surahForPage[index] =
          surahIndexesForPage; // Store surah indexes for this page

      return VisibilityResult(true, counter);
    }

    return VisibilityResult(false, counter);
  }
}
