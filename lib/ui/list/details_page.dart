import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final int item;

  const DetailsPage({
    super.key,
    required this.item,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.item.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text('This is ${widget.item.toString()} details page!'),
        ),
      ),
    );
  }
}
