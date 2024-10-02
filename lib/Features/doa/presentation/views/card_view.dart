import 'package:flutter/material.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/card_view_body.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.doa});
  final DuaInfo doa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardViewBody(
          doa: doa,
        ),
      ),
    );
  }
}
