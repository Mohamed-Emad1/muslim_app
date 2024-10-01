import 'package:hive/hive.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';

void svaeSurahs(List<SurahModel> surahs, surahNamebox) {
  var box = Hive.box<SurahModel>(surahNamebox);
  box.addAll(surahs);
}
