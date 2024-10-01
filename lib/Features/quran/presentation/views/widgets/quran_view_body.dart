import 'package:flutter/widgets.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/quran_page_list_view.dart';
class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: QuranPageListView(),
        ),
      ],
    );
  }
}


