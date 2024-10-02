import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_view_body.dart';

class DoaView extends StatelessWidget {
  const DoaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const SafeArea(
        child: DoaViewBody(),
      ),
    );
  }
}
