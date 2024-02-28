import 'dart:math';

import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  const MyColoredBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    );
  }
}
