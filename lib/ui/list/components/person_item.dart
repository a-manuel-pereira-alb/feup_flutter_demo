import 'package:feup_flutter_demo/models/person_model.dart';
import 'package:flutter/material.dart';

class PersonItem extends StatelessWidget {
  final PersonModel person;
  final VoidCallback onTap;

  const PersonItem({
    Key? key,
    required this.person,
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
          child: Text(person.name),
        ),
      ),
    );
  }
}
