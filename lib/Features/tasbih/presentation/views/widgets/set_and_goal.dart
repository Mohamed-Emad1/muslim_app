import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';

class SetAndRange extends StatelessWidget {
  const SetAndRange({
    super.key, required this.setNumber,
  });

  final int setNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "set: $setNumber",
          style: Styles.textStyle12,
        ),
        const Text(
          "Range:100",
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}
