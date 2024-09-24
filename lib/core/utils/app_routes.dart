import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_app/Features/tasbih/presentation/manager/Tasbih_cubit/tasbih_cubit.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/tasbih_view.dart';

import '../../Features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static const kTasbihView = "/tasbihView";
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
    ],
  );
}
