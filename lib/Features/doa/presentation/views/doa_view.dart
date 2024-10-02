import 'package:flutter/material.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_view_body.dart';

import '../../../../core/utils/colors.dart';

class DoaView extends StatelessWidget {
  const DoaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsStyles.doaAppBar,
      ),
      body: const SafeArea(
        child: DoaViewBody(),
      ),
    );
  }
}
