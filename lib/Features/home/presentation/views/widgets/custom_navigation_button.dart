import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

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
          backgroundColor: ColorsStyles.prayerTimesCard,
          currentIndex: currntPage,
          onTap: (index) {
            setState(() {
              currntPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          ],
        ),
      ),
    );
  }
}
