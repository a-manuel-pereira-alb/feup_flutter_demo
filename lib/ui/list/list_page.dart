import 'package:feup_flutter_demo/models/person_model.dart';
import 'package:feup_flutter_demo/ui/list/components/person_item.dart';
import 'package:feup_flutter_demo/ui/list/details_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({
    super.key,
  });

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    final List<PersonModel> people = [
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
      const PersonModel(name: 'Maria'),
    ];

    return Material(
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: people.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: PersonItem(
              person: people[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      person: people[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
