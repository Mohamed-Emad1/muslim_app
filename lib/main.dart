import 'package:flutter/material.dart';
import 'package:muslim_app/core/utils/app_routes.dart';

import 'core/utils/colors.dart';

void main() {
  runApp(const MuslimApp());
}

class MuslimApp extends StatelessWidget {
  const MuslimApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      title: 'Muslim app',
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: ColorsStyles.homeBackGround,
      ),
    );
  }
}

