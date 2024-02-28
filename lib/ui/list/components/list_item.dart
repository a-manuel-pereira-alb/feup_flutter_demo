import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int item;
  final VoidCallback onTap;

  const ListItem({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.blue,
        child: Center(
          child: Text(item.toString()),
        ),
      ),
    );
  }
}
