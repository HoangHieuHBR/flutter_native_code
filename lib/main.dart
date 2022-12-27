import 'package:flutter/material.dart';

import 'first_widget.dart';
import 'second_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextView(),
    );
  }
}

class TextView extends StatelessWidget {
  const TextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter PlatformView Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Card(
            child: SizedBox(
              height: 200,
              child: FirstWidget(),
            ),
          ),
          Card(
            child: SizedBox(
              height: 200,
              child: SecondWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
