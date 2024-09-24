import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorsStyles.buttonColor)),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle11.copyWith(color: ColorsStyles.white),
      ),
    );
  }
}
