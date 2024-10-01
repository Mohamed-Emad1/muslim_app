import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/quran/presentation/manager/quran_cubit/quran_cubit.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/quran_page_list_view.dart';

class QuranViewBody extends StatelessWidget {
  const QuranViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QuranCubit>(context).getSurahs();
    return const Column(
      children: [
        Expanded(
          child: QuranPageListView(),
        ),
      ],
    );
  }
}
