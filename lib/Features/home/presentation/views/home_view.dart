import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:muslim_app/core/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
        // child: LocationScreen(),
      ),
      backgroundColor: ColorsStyles.homeBackGround,
    );
  }
}
