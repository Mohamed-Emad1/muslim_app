import 'package:flutter/material.dart';
import 'package:muslim_app/Features/doa/presentation/views/widgets/doa_card.dart';

class DoaListView extends StatelessWidget {
  const DoaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: DoaCard(),
        );
      },
    );
  }
}
