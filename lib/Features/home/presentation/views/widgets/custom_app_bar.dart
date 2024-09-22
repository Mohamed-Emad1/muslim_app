import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SvgPicture.asset(
          //   'assets/images/pp.svg',
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage(
                      AssetsData.profile,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              const Column(
                children: [
                  Text("Name of person"),
                  Text("Welcome Back"),
                ],
              ),
            ],
          ),
          const Icon(Icons.notifications_rounded),
        ],
      ),
    );
  }
}
