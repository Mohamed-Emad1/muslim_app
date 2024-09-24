import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_card.dart';
import 'package:muslim_app/core/utils/app_routes.dart';

import '../../../../../core/utils/assets.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        CustomCard(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.kTasbihView);
          },
          title: "Tasbih",
          image: AssetsData.tsbeha,
        ),
        const CustomCard(
          title: "Hadith",
          image: AssetsData.hadith,
        ),
        const CustomCard(
          title: "Doa",
          image: AssetsData.doa,
        ),
        const CustomCard(
          title: "Qu'ran",
          image: AssetsData.quran,
        ),
        const CustomCard(
          title: "Wallpaper",
          image: AssetsData.wallpaper,
        ),
        const CustomCard(
          title: "Donations",
          image: AssetsData.donations,
        ),
      ],
    );
  }
}
