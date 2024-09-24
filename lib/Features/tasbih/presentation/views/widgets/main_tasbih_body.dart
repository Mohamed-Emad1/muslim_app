import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Features/tasbih/presentation/views/widgets/set_and_goal.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/Tasbih_cubit/tasbih_cubit.dart';

class MainTasbihBody extends StatefulWidget {
  const MainTasbihBody({super.key});

  @override
  State<MainTasbihBody> createState() => _MainTasbihBodyState();
}

class _MainTasbihBodyState extends State<MainTasbihBody> {
  void dispos() {
    super.dispose();
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 37),
            child: SetAndRange(),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 100,
            child: Image.asset(
              AssetsData.fourthThekr,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Tasbih Counter",
            style: Styles.textStyle15,
          ),
          BlocBuilder<TasbihCubit, TasbihState>(builder: (context, state) {
            if (state is TasbihCounter) {
              count = state.counter;
            } else if (state is TasbihFinished) {
              count = 0;
            } else if (state is TasbihRefreshed) {
              count = 0;
            }

            return Text(
              count.toString(),
              style:
                  Styles.textStyle76.copyWith(color: ColorsStyles.goldenColor),
            );
          }),
          const SizedBox(
            height: 6,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: ColorsStyles.homeBackGround,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            onPressed: () {
              count++;
              log("$count");
              BlocProvider.of<TasbihCubit>(context)
                  .counterTasbih(counter: count);
            },
            child: Text(
              "Counte",
              style: Styles.textStyle16.copyWith(
                  color: ColorsStyles.goldenColor, fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
