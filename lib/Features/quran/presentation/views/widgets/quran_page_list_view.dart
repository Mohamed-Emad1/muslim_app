import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/quran/presentation/manager/quran_cubit/quran_cubit.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/concatenate_ayas.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/showAyat_model.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/surah_title.dart';
import 'package:muslim_app/core/widgets/custom_failure_message.dart';
import 'package:muslim_app/core/widgets/custom_loading_indicator.dart';

class QuranPageListView extends StatelessWidget {
  const QuranPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    ConcatenateAyas concatenateAyas = ConcatenateAyas();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: 604,
        itemBuilder: (context, index) {
          concatenateAyas.clearAyahs();
          return BlocBuilder<QuranCubit, QuranState>(
            builder: (context, state) {
              if (state is QuranFailure) {
                return CustomFailureMessage(data: state.errorMessage);
              } else if (state is QuranSuccess) {
                for (int i = 0; i < state.surahs[index].ayahs!.length; i++) {
                  if (state.surahs[index].ayahs![i+1].page == index + 1) {
                    concatenateAyas.addAyah(
                      ayah: '${state.surahs[index].ayahs![i+1].text} (${state.surahs[index].ayahs![i+1].numberInSurah})',
                    );
                  }
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SurahNameWidget(
                      surahName: state.surahs[index].name ?? '',
                      // surahName: "سُورَةُ ٱلْفَاتِحَةِ",
                      surahNumber: state.surahs[index].number?.toString() ?? '',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ShowSurahAyat(
                        ayahs: concatenateAyas.concatenateAyahs(),
                        pageNumber: (index + 1).toString(),
                      ),
                    ),
                  ],
                );
              } else {
                return const CustomLoadingIndicator();
              }
            },
          );
        },
      ),
    );
  }
}
