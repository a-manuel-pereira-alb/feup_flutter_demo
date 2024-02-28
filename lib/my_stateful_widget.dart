import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  final String name;

  const MyStatefulWidget({
    Key? key,
    required this.name,
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
        child: Center(
          child: Text(widget.name),
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
