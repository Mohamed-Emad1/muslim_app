import 'package:flutter/material.dart';
import 'package:muslim_app/core/utils/colors.dart';
import 'package:muslim_app/core/utils/styles.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SvgPicture.asset(
          //   'assets/images/pp.svg',
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage(
                        AssetsData.profile,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name of person",
                      style: Styles.textStyle13,
                    ),
                    Text(
                      "Welcome Back",
                      style: Styles.textStyle9,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 22.5),
            child: Icon(
              Icons.notifications_rounded,
              color: ColorsStyles.goldenColor,
            ),
          ),
        ],
      ),
    );
  }
}
