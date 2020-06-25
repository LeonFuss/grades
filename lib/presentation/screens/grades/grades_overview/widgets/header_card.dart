import 'package:flutter/material.dart';

import 'header_card/background_card.dart';

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: BackgroundCard(),
        )
      ],
    );
  }
}
