import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_grid_view.dart';
import '../../../../../core/utils/colors.dart';

class OptionsAndParyersTimes extends StatelessWidget {
  const OptionsAndParyersTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorsStyles.optionsAndParyersTimesColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child:const Column(
        children: [
          Expanded(
            child: CustomGridView(),
          ),
        ],
      ),
    );
  }
}


