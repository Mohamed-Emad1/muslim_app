import 'package:dartz/dartz.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import 'package:muslim_app/core/errors/failure.dart';

abstract class QuranRepo {
  Future<Either<Failure, List<SurahModel>>> getSurahs();
}
