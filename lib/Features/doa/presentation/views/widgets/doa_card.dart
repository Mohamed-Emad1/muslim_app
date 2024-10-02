import 'package:flutter/material.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_item_info.dart';

import '../../../../../core/utils/colors.dart';

class DoaCard extends StatelessWidget {
  const DoaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsStyles.doaCard, borderRadius: BorderRadius.circular(16)),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: const Padding(
        padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: DoaItemInfo(),
      ),
    );
  }
}