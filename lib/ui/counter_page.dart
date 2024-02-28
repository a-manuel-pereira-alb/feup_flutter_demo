import 'package:feup_flutter_demo/components/my_colored_box.dart';
import 'package:feup_flutter_demo/components/my_stateful_widget.dart';
import 'package:feup_flutter_demo/components/my_widget.dart';
import 'package:feup_flutter_demo/ui/second_page.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(
                      title: 'Second Page',
                    ),
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
