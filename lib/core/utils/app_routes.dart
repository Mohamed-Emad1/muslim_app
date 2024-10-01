import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_app/Features/quran/data/quran_remote_data.dart';
import 'package:muslim_app/Features/quran/data/quran_repo_local_storage.dart';
import 'package:muslim_app/Features/quran/data/repo/quran_repo_implementaion.dart';
import 'package:muslim_app/Features/quran/presentation/manager/quran_cubit/quran_cubit.dart';
import 'package:muslim_app/Features/quran/presentation/views/quran_view.dart';
import 'package:muslim_app/Features/tasbih/presentation/manager/Tasbih_cubit/tasbih_cubit.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/tasbih_view.dart';
import 'package:muslim_app/core/utils/api_service.dart';

import '../../Features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static const kTasbihView = "/tasbihView";
  static const kQuranView = "/quranView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kTasbihView,
        builder: (context, state) => BlocProvider(
          create: (context) => TasbihCubit(),
          child: const TasbihView(),
        ),
      ),
      GoRoute(
        path: kQuranView,
        builder: (context, state) => BlocProvider(
          create: (context) => QuranCubit(QuranRepoImplementaion(
              quranRepoLocalStorage: QuranRepoLocalStorageImpl(),
              quranRepoRemote: QuranRepoRemoteImpl(
                apiService: ApiService(
                  Dio(),
                ),
              ))),
          child: const QuranView(),
        ),
      ),
    ],
  );
}
