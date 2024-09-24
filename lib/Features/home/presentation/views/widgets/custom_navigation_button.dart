import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/functions/go_to_page_by_navigationBTN.dart';

class CustomNavigationButton extends StatefulWidget {
  const CustomNavigationButton({super.key});

  @override
  State<CustomNavigationButton> createState() => _CustomNavigationButtonState();
}

class _CustomNavigationButtonState extends State<CustomNavigationButton> {
  int currntPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, bottom: 9, top: 7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BottomNavigationBar(
          selectedItemColor: ColorsStyles.white,
          unselectedItemColor: ColorsStyles.white.withOpacity(0.5),
          backgroundColor: ColorsStyles.prayerTimesCard,
          type: BottomNavigationBarType.shifting,
          currentIndex: currntPage,
          onTap: (index) {
            setState(() {
              currntPage = index;
              goToPageFromNavigationButtonHomeView(currntPage, context);
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted_add,
              ),
              label: "Tasbih Counter",
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
