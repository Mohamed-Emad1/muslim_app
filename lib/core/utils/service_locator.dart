import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:muslim_app/Features/quran/data/quran_remote_data.dart';
import 'package:muslim_app/Features/quran/data/quran_repo_local_storage.dart';
import 'package:muslim_app/Features/quran/data/repo/quran_repo_implementaion.dart';
import 'package:muslim_app/core/utils/api_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<QuranRepoImplementaion>(QuranRepoImplementaion(
    quranRepoLocalStorage: QuranRepoLocalStorageImpl(),
    quranRepoRemote: QuranRepoRemoteImpl(
      apiService: getIt<ApiService>(),
    ),
  ));
}
