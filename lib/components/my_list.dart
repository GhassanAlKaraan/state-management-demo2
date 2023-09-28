import 'package:flutter/material.dart';

import 'card.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoCard(text: "Provider"),
        InfoCard(text: "GetX"),
        InfoCard(text: "RiverPod"),
      ],
    );
  }
}
