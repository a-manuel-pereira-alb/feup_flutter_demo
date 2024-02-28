import 'package:feup_flutter_demo/models/person_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final PersonModel person;

  const DetailsPage({
    super.key,
    required this.person,
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
        title: Text(widget.person.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text('This is ${widget.person.name} details page!'),
        ),
      ),
    );
  }
}
