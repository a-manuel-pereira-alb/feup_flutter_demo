import 'package:feup_flutter_demo/models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PersonItem extends StatelessWidget {
  final PersonModel person;
  final VoidCallback onTap;
  final VoidCallback onDeleteTap;

  const PersonItem({
    Key? key,
    required this.person,
    required this.onTap,
    required this.onDeleteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(person.name),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => onDeleteTap.call(),
            foregroundColor: Colors.red,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () => onTap.call(),
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade100,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  //size: 40,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  person.name,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
