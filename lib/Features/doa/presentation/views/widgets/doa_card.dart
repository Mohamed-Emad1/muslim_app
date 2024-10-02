import 'package:flutter/material.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_item_info.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';

import '../../../../../core/utils/colors.dart';

class DoaCard extends StatelessWidget {
  const DoaCard(
      {super.key,
      required this.doa,
      this.maxLines,
      this.isViewMore,
      this.overflow,
       this.cardColor = ColorsStyles.doaCard,
  });

  final DuaInfo doa;
  final int? maxLines;
  final bool? isViewMore;
  final TextOverflow? overflow;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16)),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: DoaItemInfo(
          doa: doa,
          isViewMore: isViewMore,
          maxLines: maxLines,
          overflow: overflow,
        ),
      ),
    );
  }
}
