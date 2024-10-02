import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/doa/presentation/manager/doa_cubit/doa_cubit.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_list_view.dart';

class DoaViewBody extends StatelessWidget {
  const DoaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DoaCubit>(context).getDoa();
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Expanded(
            child: DoaListView(),
          )
        ],
      ),
    );
  }
}
