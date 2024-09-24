import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class MainTasbihBody extends StatefulWidget {
  const MainTasbihBody({super.key});

  @override
  State<MainTasbihBody> createState() => _MainTasbihBodyState();
}

class _MainTasbihBodyState extends State<MainTasbihBody> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 37),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "set:1",
                style: Styles.textStyle12,
              ),
              Text(
                "Range:100",
                style: Styles.textStyle12,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Image.asset(AssetsData.hmed),
        const SizedBox(
          height: 108,
        ),
        const Text(
          "Tasbih Counter",
          style: Styles.textStyle15,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          count.toString(),
          style: Styles.textStyle76.copyWith(color: ColorsStyles.goldenColor),
        ),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: ColorsStyles.homeBackGround,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            onPressed: () {},
            child: Text(
              "Counte",
              style: Styles.textStyle16.copyWith(
                  color: ColorsStyles.goldenColor, fontWeight: FontWeight.w900),
            ))
      ],
    );
  }
}
