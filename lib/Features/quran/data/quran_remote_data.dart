import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import 'package:muslim_app/core/utils/api_service.dart';

abstract class QuranRepoRemote {
  Future<List<SurahModel>> getSurahs();
}

class QuranRepoRemoteImpl extends QuranRepoRemote {
  final ApiService _apiService;

  QuranRepoRemoteImpl({required ApiService apiService})
      : _apiService = apiService;
  @override
  Future<List<SurahModel>> getSurahs() async {
    var respose = await _apiService.get(
        endPoint: "quran/ar.alafasy");
        List<SurahModel> surahs = getSurahsModel(respose);
    return surahs;
  }
  
  List<SurahModel> getSurahsModel(Map<String, dynamic> respose) {
    List<SurahModel> surahs = [];
    for (var item in respose['data']['surahs']) {
      surahs.add(SurahModel.fromJson(item));
    }
    return surahs;
  }
}
