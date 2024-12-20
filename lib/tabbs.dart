
import 'package:flutter/material.dart';

void main() {
  runApp(const Tabbs());
}

class Tabbs extends StatelessWidget {
  const Tabbs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                
                Tab(icon: Icon(Icons.wifi)),
                Tab(icon: Icon(Icons.sunny)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.camera)),
                Tab(icon: Icon(Icons.person_add_rounded)),
              ],
            ),
            title: const Text('Tabs page'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.flutter_dash),
              Icon(Icons.cloud),
              Icon(Icons.access_alarm_outlined),
              Icon(Icons.pageview),
              Icon(Icons.model_training),
            ],
          ),
        ),
      ),
    );
  }
}