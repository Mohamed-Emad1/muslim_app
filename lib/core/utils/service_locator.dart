import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:muslim_app/Features/doa/data/local_repo.dart';
import 'package:muslim_app/Features/doa/data/repos/doa_repo_implementation.dart';
import 'package:muslim_app/Features/home/data/prayer_local_storage.dart';
import 'package:muslim_app/Features/home/data/prayer_times_remote.dart';
import 'package:muslim_app/Features/home/data/repos/prayer_repo_impl.dart';
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
  getIt.registerSingleton<QuranRepoImplementaion>(
    QuranRepoImplementaion(
      quranRepoLocalStorage: QuranRepoLocalStorageImpl(),
      quranRepoRemote: QuranRepoRemoteImpl(
        apiService: getIt<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<PrayerRepoImpl>(
    PrayerRepoImpl(
      prayerLocalStorageImpl: PrayerLocalStorageImpl(),
      prayersRepoRemote: PrayerTimesRemoteImpl(
        apiService: getIt<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<DoaRepoImplementation>(
      DoaRepoImplementation(
        localRepo: LocalRepoImpl(),
      ),
  );
}
