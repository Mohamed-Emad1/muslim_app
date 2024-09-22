import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class ScreenOptions extends StatelessWidget {
  const ScreenOptions({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
      child: Container(
        width: width * 0.9,
        height: height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorsStyles.goldenColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 33, top: 32, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Remember Allah",
                    style:
                        Styles.textStyle11.copyWith(color: ColorsStyles.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Start Tasbih\n Counter",
                    style:
                        Styles.textStyle16.copyWith(color: ColorsStyles.black),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 10,
              child: Image.asset(
                AssetsData.tasbihHand,
                color: ColorsStyles.black.withOpacity(0.9),
              ),
            ),
            const Positioned(
              right: 50,
              top: 75,
              child: CustomButton(
                text: "Get Started Now",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
