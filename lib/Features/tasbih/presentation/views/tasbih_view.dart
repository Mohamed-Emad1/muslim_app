import 'package:flutter/material.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/widgets/tasbih_view_body.dart';

class TasbihView extends StatelessWidget {
  const TasbihView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TasbihViewBody(),
      ),
      
    );
  }
}
