import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppbarTasbihView extends StatelessWidget {
  const CustomAppbarTasbihView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          "Tasbih Counter",
          style: Styles.textStyle15,
        ),
      ],
    );
  }
}
