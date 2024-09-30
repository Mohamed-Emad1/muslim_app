import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.title, required this.image, this.onTap});

  final String title;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsStyles.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(
                      0, 4), // Horizontal and vertical offset (x: 0, y: 4)
                  blurRadius: 6, // How soft the shadow is
                  spreadRadius: 0, // Spread radius (controls shadow expansion)
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Image.asset(image),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle11.copyWith(
                      fontWeight: FontWeight.w400, color: ColorsStyles.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
