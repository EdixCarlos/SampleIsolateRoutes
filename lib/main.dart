import 'package:flutter/material.dart';

import 'data_transfer_page.dart';
import 'infinite_process_page.dart';
import 'performance_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.flash_on),
                  text: 'Performance',
                ),
              ],
            ),
            title: const Text('Isolates'),
          ),
          body: const TabBarView(
            children: [
              PerformancePage(),
            ],
          ),
        ),
      ),
    );
  }
}
