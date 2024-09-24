import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class LocationTitle extends StatelessWidget {
  const LocationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on,
          size: 18,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Cairo, Egypt", style: Styles.textStyle15),
      ],
    );
  }
}
