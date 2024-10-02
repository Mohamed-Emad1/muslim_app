import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class LocationTitle extends StatelessWidget {
  const LocationTitle({
    super.key,
    required this.location,
  });
  final String location;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          size: 18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(location, style: Styles.textStyle15),
      ],
    );
  }
}
