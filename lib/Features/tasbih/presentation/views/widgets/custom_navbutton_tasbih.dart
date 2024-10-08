import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/colors.dart';
import '../../manager/Tasbih_cubit/tasbih_cubit.dart';

class CustomNavigationButtonTasbihView extends StatefulWidget {
  const CustomNavigationButtonTasbihView({super.key});

  @override
  State<CustomNavigationButtonTasbihView> createState() =>
      _CustomNavigationButtonTasbihViewState();
}

class _CustomNavigationButtonTasbihViewState
    extends State<CustomNavigationButtonTasbihView> {
  int thekrNumber = 0;
  int currntPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, bottom: 9, top: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BottomNavigationBar(
          selectedItemColor: ColorsStyles.white,
          unselectedItemColor: ColorsStyles.white.withOpacity(0.5),
          backgroundColor: ColorsStyles.prayerTimesCard,
          type: BottomNavigationBarType.shifting,
          currentIndex: currntPage,
          onTap: (index) {
            currntPage = index;
            actionFromNavigationButton(index, context);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.refresh,
              ),
              label: "refresh",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.change_circle,
              ),
              label: "change Thekr",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
              backgroundColor: ColorsStyles.prayerTimesCard,
            ),
          ],
        ),
      ),
    );
  }

  void actionFromNavigationButton(int index, BuildContext context) {
    if (index == 0) {
      BlocProvider.of<TasbihCubit>(context)
          .refreshtasbeih(); // Call refreshTasbih when "refresh" is tapped
    } else if (index == 1) {
      thekrNumber = (thekrNumber + 1) % 4;
      // log(thekrNumber.toString());
      BlocProvider.of<TasbihCubit>(context)
          .changeTasbih(thekerNumber: thekrNumber);
    } else if (index == 2) {
      GoRouter.of(context).pop();
    }
  }
}
