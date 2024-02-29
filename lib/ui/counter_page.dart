import 'package:feup_flutter_demo/components/my_colored_box.dart';
import 'package:feup_flutter_demo/components/my_stateful_widget.dart';
import 'package:feup_flutter_demo/components/my_widget.dart';
import 'package:feup_flutter_demo/ui/list/list_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late SharedPreferences sharedPreferences;
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    _getCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListPage(),
                ),
              );
            },
            child: Container(
              height: 60,
              width: 120,
              color: Colors.amber,
              child: const Center(
                child: Text('Second Page'),
              ),
            ),
          ),
          const Row(
            children: [
              MyColoredBox(),
              MyColoredBox(),
              MyColoredBox(),
              MyColoredBox(),
            ],
          ),
          const MyWidget(name: 'Hi FEUP!'),
          const MyStatefulWidget(),
          const Spacer(),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: () => _incrementCounter(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  /// Get counter from preferences.
  void _getCounter() async {
    sharedPreferences = await SharedPreferences.getInstance();

    final counter = sharedPreferences.getInt('counter');

    if (counter != null) {
      setState(() {
        _counter = counter;
      });
    }
  }

  /// Save counter in preferences.
  void _saveCounter() async {
    await sharedPreferences.setInt('counter', _counter);
  }

  /// Increment counter.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    _saveCounter();
  }
}
