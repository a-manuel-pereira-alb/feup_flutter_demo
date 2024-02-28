import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color _backgroundColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _toggleBackgroundColor(),
      child: Container(
        height: 100,
        width: 100,
        color: _backgroundColor,
        child: const Center(
          child: Text('Tap me'),
        ),
      ),
    );
  }

  /// Toggle background color.
  void _toggleBackgroundColor() {
    Color updatedBackgroundColor;

    if (_backgroundColor == Colors.blue) {
      updatedBackgroundColor = Colors.green;
    } else {
      updatedBackgroundColor = Colors.blue;
    }

    setState(() {
      _backgroundColor = updatedBackgroundColor;
    });
  }
}
