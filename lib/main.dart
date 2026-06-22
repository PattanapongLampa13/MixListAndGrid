import 'package:flutter/material.dart';
import 'gridview.dart';
import 'listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cowboy Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ร้านขายอุปกรณ์ Cowboy'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'สินค้าแนะนำ (Grid View)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: CowboyGridView(),
          ),
          Divider(thickness: 2),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'รายการสินค้าทั้งหมด (List View)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: CowboyListView(),
          ),
        ],
      ),
    );
  }
}
