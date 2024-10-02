import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_card.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';
import 'package:muslim_app/core/utils/colors.dart';

class CardViewBody extends StatelessWidget {
  const CardViewBody({super.key, required this.doa});

  final DuaInfo doa;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: DoaCard(
              isViewMore: false,
              // maxLines: null,
              // overflow: null,
              cardColor: ColorsStyles.buttonColor,
              doa: doa,
            ),
          ),
        ],
      ),
    );
  }
}
