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
    final listItems = List<int>.generate(1000, (index) => index + 1);

    return Material(
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              child: Center(
                child: Text(listItems[index].toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
