import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/quran/presentation/manager/quran_cubit/quran_cubit.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/check_visibility.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/concatenate_ayas.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/functions/concatinated_ayahs.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/showAyat_model.dart';
import 'package:muslim_app/Features/quran/presentation/views/widgets/surah_title.dart';
import 'package:muslim_app/core/widgets/custom_failure_message.dart';
import 'package:muslim_app/core/widgets/custom_loading_indicator.dart';

class QuranPageListView extends StatefulWidget {
  const QuranPageListView({super.key});

  @override
  State<QuranPageListView> createState() => _QuranPageListViewState();
}

class _QuranPageListViewState extends State<QuranPageListView> {
  Map<int, bool> pageVisibility = {}; // Store visibility status for each page
  Map<int, List<int>> surahForPage = {}; // Store surah index for each page

  late VisibilityChecker visibilityChecker; // Initialize VisibilityChecker

  @override
  void initState() {
    super.initState();
    visibilityChecker = VisibilityChecker(
      pageVisibility: pageVisibility,
      surahForPage: surahForPage,
    );
  }

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
                concatenateAyas = concatenateAyahs(state.surahs, index);

                // Call the checkVisibility method from the VisibilityChecker class
                var visibilityResult =
                    visibilityChecker.checkVisibility(index, state.counter);

                state.counter = visibilityResult.counter;

                // Get the list of surah indexes for this page
                List<int> surahIndexes =
                    visibilityChecker.surahForPage[index] ?? [];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),

                    // Display Surah names for this page
                    Visibility(
                      visible: visibilityResult.isVisible ||
                          pageVisibility[index] == true,
                      child: Column(
                        children: List.generate(surahIndexes.length, (i) {
                          int surahIndex = surahIndexes[i];
                          return SurahNameWidget(
                            surahName: state.surahs[surahIndex].name ?? '',
                            surahNumber: (state.surahs[surahIndex].number ?? '')
                                .toString(),
                          );
                        }),
                      ),
                    ),

                    const SizedBox(height: 15),

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
