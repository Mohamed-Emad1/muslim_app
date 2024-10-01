import 'package:flutter/material.dart';
import 'package:muslim_app/core/utils/styles.dart';

class CustomFailureMessage extends StatelessWidget {
  const CustomFailureMessage({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        data,
        style: Styles.textStyle30,
      ),
    );
  }
}
