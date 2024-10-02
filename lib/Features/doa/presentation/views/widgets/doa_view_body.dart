import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_card.dart';

class DoaViewBody extends StatelessWidget {
  const DoaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child:  Column(
        children: [
          DoaCard(),
        ],
      ),
    );
  }
}




