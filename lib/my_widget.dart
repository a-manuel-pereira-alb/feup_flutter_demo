import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  final String name;

  const MyWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
