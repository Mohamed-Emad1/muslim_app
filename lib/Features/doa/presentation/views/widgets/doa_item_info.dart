import 'package:flutter/widgets.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class DoaItemInfo extends StatelessWidget {
  const DoaItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "name of the doa",
            style: Styles.textStyle19.copyWith(color: ColorsStyles.black),
          ),
        ),
        Text(
          "title of the doa",
          style: Styles.textStyle16.copyWith(color: ColorsStyles.black),
          textAlign: TextAlign.start,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "arabic doa",
            style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
          ),
        ),
        Text(
          "English doaa",
          style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
        ),
        Text(
          "Translated doa",
          style: Styles.textStyle13.copyWith(color: ColorsStyles.black),
        ),
        const Spacer(),
        Align(
            alignment: Alignment.centerRight,
            child: CustomButton(text: "View more", onPressed: () {})),
      ],
    );
  }
}
