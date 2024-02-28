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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: listItems
                .map(
                  (listItem) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Center(
                        child: Text(listItem.toString()),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
