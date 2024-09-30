import 'package:flutter/material.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: QuranViewBody()),
    );
  }
}
