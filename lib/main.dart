import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/home_view.dart';

import 'core/utils/colors.dart';

void main() {
  runApp(const MuslimApp());
}

class MuslimApp extends StatelessWidget {
  const MuslimApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muslim app',
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: ColorsStyles.homeBackGround,
      ),
      home:const HomeView(),
    );
  }
}

