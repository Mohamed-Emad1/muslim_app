import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppbarTasbihView extends StatelessWidget {
  const CustomAppbarTasbihView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.arrow_back),
        SizedBox(
          width: 20,
        ),
        Text(
          "Tasbih Counter",
          style: Styles.textStyle15,
        ),
      ],
    );
  }
}
