import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/options_and_prayers_times.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/screen_options.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        ScreenOptions(),
        SizedBox(
          height: 26,
        ),
        Expanded(child: OptionsAndParyersTimes()),
      ],
    );
  }
}




