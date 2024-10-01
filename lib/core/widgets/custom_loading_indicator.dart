import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:muslim_app/core/utils/colors.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.8;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      color: Colors.white,
      width: width, // Full screen width
      height: height, // 80% of the screen height
      alignment: Alignment.center, // Center the loading indicator
      child: SizedBox(
        width: width * 0.5,
        height: width * 0.5, // Set height and width for the loading indicator
        child: const LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,

        /// Required, The loading type of the widget
        colors: [ColorsStyles.goldenColor],

        /// Optional, The color collections
        strokeWidth: 2,

        /// Optional, The stroke of the line, only applicable to widget which contains line
        backgroundColor: Colors.white,

        /// Optional, Background of the widget
        pathBackgroundColor: Colors.black

        /// Optional, the stroke backgroundColor
        ),
      ),
    );
  }
}
