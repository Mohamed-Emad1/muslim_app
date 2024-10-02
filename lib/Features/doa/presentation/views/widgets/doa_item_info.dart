import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class DoaItemInfo extends StatelessWidget {
  const DoaItemInfo({
    super.key,
    required this.doa,
  });
  final DuaInfo doa;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            doa.doaName,
            style: Styles.textStyle19.copyWith(color: ColorsStyles.black),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          doa.dua.title ?? 'No Title',
          style: Styles.textStyle16.copyWith(color: ColorsStyles.black),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            doa.dua.arabic ?? 'No Doa',
            style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          doa.dua.translation ?? 'No Doa',
          style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          doa.dua.transliteration ?? 'No Doa',
          style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                overflow: TextOverflow.ellipsis,
                doa.dua.reference ?? 'No Refrence Found',
                style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
              ),
            ),
            const ViewMoreButton(),
          ],
        ),
      ],
    );
  }
}

class ViewMoreButton extends StatelessWidget {
  const ViewMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomButton(
        text: "View more",
        onPressed: () {
          
        },
      ),
    );
  }
}
