import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorsStyles.buttonColor)),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle11.copyWith(color: ColorsStyles.white),
      ),
    );
  }
}
