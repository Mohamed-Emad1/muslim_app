import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';

class CustomNavigationButtonTasbihView extends StatefulWidget {
  const CustomNavigationButtonTasbihView({super.key});

  @override
  State<CustomNavigationButtonTasbihView> createState() =>
      _CustomNavigationButtonTasbihViewState();
}

class _CustomNavigationButtonTasbihViewState
    extends State<CustomNavigationButtonTasbihView> {
  int currntPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, bottom: 9, top: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BottomNavigationBar(
          selectedItemColor: ColorsStyles.white,
          unselectedItemColor: ColorsStyles.white.withOpacity(0.5),
          backgroundColor: ColorsStyles.prayerTimesCard,
          type: BottomNavigationBarType.shifting,
          currentIndex: currntPage,
          onTap: (index) {
            currntPage = index;
            if (currntPage == 1) {
              GoRouter.of(context).pop();
            }
            setState(() {
              // goToPageFromNavigationButtonHomeView(currntPage, context);
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.refresh,
              ),
              label: "refresh",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
          ],
        ),
      ),
    );
  }
}
