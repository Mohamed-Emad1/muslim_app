import 'package:flutter/material.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/widgets/custom_app_bar.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/widgets/main_tasbih_body.dart';

class TasbihViewBody extends StatelessWidget {
  const TasbihViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          CustomAppbarTasbihView(),
          MainTasbihBody(),
        ],
      ),
    );
  }
}

