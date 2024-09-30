import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import 'package:muslim_app/Features/quran/data/quran_remote_data.dart';
import 'package:muslim_app/Features/quran/data/quran_repo_local_storage.dart';
import 'package:muslim_app/Features/quran/data/repo/quran_repo.dart';
import 'package:muslim_app/core/errors/failure.dart';

class QuranRepoImplementaion extends QuranRepo{
  final QuranRepoLocalStorage quranRepoLocalStorage;
  final QuranRepoRemote quranRepoRemote;
  QuranRepoImplementaion({required this.quranRepoLocalStorage,required this.quranRepoRemote});
  @override
  Future<Either<Failure, List<SurahModel>>> getSurahs() async{

    try {
  var result = quranRepoLocalStorage.getSurahs();
  if(result.isEmpty){
    var remoteResult = await quranRepoRemote.getSurahs();
    // await quranRepoLocalStorage.saveSurahs(remoteResult);
    return Right(remoteResult);
  }else{
    return Right(result);
  }
} on Exception catch (e) {
  if (e is DioException) {
    return Left(ServerFailure.fromDioError(e),);
  }
  else{
    return Left(ServerFailure(message:"There was an error while fetching the data"));
  }
}


    
  }

}