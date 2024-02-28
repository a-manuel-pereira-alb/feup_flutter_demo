import 'package:feup_flutter_demo/ui/counter_page.dart';
import 'package:feup_flutter_demo/ui/second_page.dart';
import 'package:flutter/material.dart';

class ShellPage extends StatefulWidget {
  const ShellPage({
    super.key,
  });

  @override
  State<ShellPage> createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('FEUP Flutter Demo'),
      ),
      body: _buildPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          // Counter Menu Item
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
            label: 'Counter',
          ),

          // Second Menu Item
          BottomNavigationBarItem(
            icon: Icon(Icons.other_houses),
            label: 'Second',
          ),
        ],
        onTap: (index) => _changePage(pageIndex: index),
      ),
    );
  }

  Widget _buildPage() {
    if (_selectedIndex == 0) {
      return const CounterPage();
    } else {
      return const SecondPage();
    }
  }

  void _changePage({
    required int pageIndex,
  }) {
    setState(() {
      _selectedIndex = pageIndex;
    });
  }
}
