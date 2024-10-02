import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/doa/presentation/manager/doa_cubit/doa_cubit.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_card.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/dua_info.dart';
import 'package:muslim_app/core/widgets/custom_failure_message.dart';
import 'package:muslim_app/core/widgets/custom_loading_indicator.dart';

class DoaListView extends StatelessWidget {
  const DoaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoaCubit, DoaState>(
      builder: (context, state) {
        if (state is DoaFailure) {
          return CustomFailureMessage(data: state.errorMessage);
        }
        if (state is DoaSuccess) {
          return ListView.builder(
            itemCount: state.doas.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  for(var dua in state.doas[index].dua)
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: DoaCard(
                    doa: DuaInfo(
                            doaName: state.doas[index].nameOfDoa, dua: dua!),
                  ),
                ),

                ],
              );
            },
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
