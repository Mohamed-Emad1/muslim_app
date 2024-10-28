import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';

import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class DoaItemInfo extends StatelessWidget {
  const DoaItemInfo({
    super.key,
    required this.doa,
    this.maxLines,
    this.isViewMore,
    this.overflow,
  });
  final DuaInfo doa;
  final int? maxLines;
  final bool? isViewMore;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            doa.doaName,
            style: Styles.textStyle19.copyWith(
                color: isViewMore ?? false
                    ? ColorsStyles.black
                    : ColorsStyles.white),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          doa.dua.title ?? 'No Title',
          style: Styles.textStyle16.copyWith(
              color: isViewMore ?? false
                  ? ColorsStyles.black
                  : ColorsStyles.white),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            overflow: overflow ?? TextOverflow.visible,
            maxLines: maxLines,
            doa.dua.arabic ?? 'No Doa',
            style: Styles.textStyle15.copyWith(
                color: isViewMore ?? false
                    ? ColorsStyles.black
                    : ColorsStyles.white),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overflow: overflow ?? TextOverflow.visible,
          maxLines: maxLines,
          doa.dua.translation ?? 'No Doa',
          style: Styles.textStyle15.copyWith(
              color: isViewMore ?? false
                  ? ColorsStyles.black
                  : ColorsStyles.white),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overflow: overflow ?? TextOverflow.visible,
          maxLines: maxLines,
          doa.dua.transliteration ?? 'No Doa',
          style: Styles.textStyle15.copyWith(
              color: isViewMore ?? false
                  ? ColorsStyles.black
                  : ColorsStyles.white),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                overflow: overflow ?? TextOverflow.visible,
                doa.dua.reference ?? 'No Refrence Found',
                style: Styles.textStyle13.copyWith(
                    color: isViewMore ?? false
                        ? ColorsStyles.black
                        : ColorsStyles.white),
              ),
            ),
            isViewMore == null || isViewMore == false
                ? const SizedBox(
                    height: 170,
                  )
                : ViewMoreButton(
                    doa: doa,
                  ),
          ],
        ),
      ],
    );
  }
}

class ViewMoreButton extends StatelessWidget {
  const ViewMoreButton({
    super.key,
    required this.doa,
  });
  final DuaInfo doa;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomButton(
        text: "View more",
        onPressed: () {
          GoRouter.of(context).push(AppRoutes.kcardView, extra: doa);
        },
      ),
    );
  }
}
