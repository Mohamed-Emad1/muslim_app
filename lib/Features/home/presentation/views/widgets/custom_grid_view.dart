import 'package:flutter/material.dart';
import 'package:muslim_app/Features/home/presentation/views/widgets/custom_card.dart';

import '../../../../../core/utils/assets.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hi");
      },
      child: GridView.count(
        crossAxisCount: 3,
        children: const [
          CustomCard(
            title: "Tasbih",
            image: AssetsData.tsbeha,
          ),
          CustomCard(
            title: "Hadith",
            image: AssetsData.hadith,
          ),
          CustomCard(
            title: "Doa",
            image: AssetsData.doa,
          ),
          CustomCard(
            title: "Qu'ran",
            image: AssetsData.quran,
          ),
          CustomCard(
            title: "Wallpaper",
            image: AssetsData.wallpaper,
          ),
          CustomCard(
            title: "Donations",
            image: AssetsData.donations,
          ),
        ],
      ),
    );
  }
}