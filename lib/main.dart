import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:muslim_app/Features/home/data/repos/prayer_repo_impl.dart';
import 'package:muslim_app/Features/home/presentation/manager/prayer_times_cubit/prayer_times_cubit.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/ayah.dart';
import 'package:muslim_app/Features/quran/data/models/surah_model/surah_model.dart';
import 'package:muslim_app/constants.dart';
import 'package:muslim_app/core/utils/app_routes.dart';
import 'package:muslim_app/core/utils/service_locator.dart';

import 'core/utils/colors.dart';
import 'core/utils/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SurahModelAdapter());
  Hive.registerAdapter(AyahAdapter());
  Hive.openBox<SurahModel>(kSurahBox);
  Hive.openBox<Ayah>(kAyahsBox);
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MuslimApp());
}

class MuslimApp extends StatelessWidget {
  const MuslimApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrayerTimesCubit(getIt.get<PrayerRepoImpl>()..getPrayerTimes(latitude: 51.509865, longitude: 	-0.118092),),
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        title: 'Muslim app',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorsStyles.homeBackGround,
        ),
      ),
    );
  }
}
