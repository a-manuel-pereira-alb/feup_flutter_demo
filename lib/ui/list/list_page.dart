import 'package:feup_flutter_demo/ui/list/components/list_item.dart';
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
    final listItems = List<int>.generate(1000, (index) => index + 1);

    return Material(
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListItem(
              item: listItems[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      item: listItems[index],
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
