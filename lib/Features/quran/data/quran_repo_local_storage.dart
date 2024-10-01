import 'package:hive/hive.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import 'package:muslim_app/constants.dart';

abstract class QuranRepoLocalStorage {
  List<SurahModel> getSurahs();
}

class QuranRepoLocalStorageImpl extends QuranRepoLocalStorage {
  @override
  List<SurahModel> getSurahs() {
    var box = Hive.box<SurahModel>(kSurahBox);
    return box.values.toList();
  }
}
