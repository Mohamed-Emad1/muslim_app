import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';

abstract class QuranRepoLocalStorage {
  List<SurahModel> getSurahs();
}

class QuranRepoLocalStorageImpl extends QuranRepoLocalStorage {
  @override
  List<SurahModel> getSurahs() {
    return [];
  }
}
