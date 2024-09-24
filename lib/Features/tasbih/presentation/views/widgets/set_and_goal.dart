import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';

class SetAndRange extends StatelessWidget {
  const SetAndRange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "set:1",
          style: Styles.textStyle12,
        ),
        Text(
          "Range:100",
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}
