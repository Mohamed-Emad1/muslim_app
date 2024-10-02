import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_app/Features/doa/data/repos/doa_repo_implementation.dart';
import 'package:muslim_app/Features/doa/presentation/manager/doa_cubit/doa_cubit.dart';
import 'package:muslim_app/Features/doa/presentation/views/doa_view.dart';
import 'package:muslim_app/Features/quran/data/repo/quran_repo_implementaion.dart';
import 'package:muslim_app/Features/quran/presentation/manager/quran_cubit/quran_cubit.dart';
import 'package:muslim_app/Features/quran/presentation/views/quran_view.dart';
import 'package:muslim_app/Features/tasbih/presentation/manager/Tasbih_cubit/tasbih_cubit.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/tasbih_view.dart';
import 'package:muslim_app/core/utils/service_locator.dart';
import '../../Features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static const kTasbihView = "/tasbihView";
  static const kQuranView = "/quranView";
  static const kDoaView = "/doaView";
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
          create: (context) => QuranCubit(getIt.get<QuranRepoImplementaion>()),
          child: const QuranView(),
        ),
      ),
      GoRoute(
        path: kDoaView,
        builder: (context, state) => BlocProvider(
          create: (context) => DoaCubit(
            getIt.get<DoaRepoImplementation>()
          ),
          child: const DoaView(),
        ),
      ),
    ],
  );
}
