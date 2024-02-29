import 'dart:math';

import 'package:feup_flutter_demo/models/person_model.dart';
import 'package:feup_flutter_demo/ui/list/components/person_item.dart';
import 'package:feup_flutter_demo/ui/list/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListPage extends StatefulWidget {
  const ListPage({
    super.key,
  });

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late List<PersonModel> _people;

  @override
  void initState() {
    super.initState();

    _people = _getPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          // List
          Positioned.fill(
            child: RefreshIndicator.adaptive(
              onRefresh: () async => _restorePeople(),
              child: ListView.builder(
                padding: const EdgeInsets.all(20).copyWith(bottom: 80),
                itemCount: _people.length,
                itemBuilder: (context, index) {
                  final isLastPerson = _people.last == _people[index];

                  return Padding(
                    padding: EdgeInsets.only(bottom: isLastPerson ? 0 : 20),
                    child: PersonItem(
                      person: _people[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              person: _people[index],
                            ),
                          ),
                        );
                      },
                      onDeleteTap: () => _deletePerson(person: _people[index]),
                    ),
                  );
                },
              ),
            ),
          ),

          // Add person
          Positioned(
            right: 20,
            bottom: 20,
            child: IconButton(
              icon: const Icon(Icons.add_circle),
              iconSize: 40,
              onPressed: () => _addPerson(),
            ),
          ),
        ],
      ),
    );
  }

  /// Get people.
  List<PersonModel> _getPeople() {
    return [
      const PersonModel(name: 'Maria'),
      const PersonModel(name: 'João'),
      const PersonModel(name: 'Zé'),
      const PersonModel(name: 'Carlos'),
      const PersonModel(name: 'Marta'),
      const PersonModel(name: 'Paulo'),
      const PersonModel(name: 'António'),
      const PersonModel(name: 'Pedro'),
      const PersonModel(name: 'Sofia'),
      const PersonModel(name: 'Francisco'),
      const PersonModel(name: 'Sara'),
      const PersonModel(name: 'Daniela'),
      const PersonModel(name: 'Rita'),
      const PersonModel(name: 'Gonçalo'),
      const PersonModel(name: 'Ricardo'),
      const PersonModel(name: 'Manuela'),
      const PersonModel(name: 'Alice'),
      const PersonModel(name: 'Vitor'),
      const PersonModel(name: 'Francisca'),
    ];
  }

  /// Add a person.
  void _addPerson() {
    // Create a person with a random name
    final newPerson = PersonModel(
      name: String.fromCharCodes(List.generate(12, (index) => Random().nextInt(33) + 89)),
    );

    List<PersonModel> updatedPeople = List.from(_people);

    updatedPeople.add(newPerson);

    setState(() {
      _people = updatedPeople;
    });
  }

  /// Delete [person].
  void _deletePerson({
    required PersonModel person,
  }) {
    List<PersonModel> updatedPeople = List.from(_people);

    updatedPeople.remove(person);

    setState(() {
      _people = updatedPeople;
    });
  }

  /// Restore people.
  void _restorePeople() {
    setState(() {
      _people = _getPeople();
    });
  }
}
