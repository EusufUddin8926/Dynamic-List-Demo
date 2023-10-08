import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DynamicListDemo(),
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false
    );
  }

}

class DynamicListDemo extends StatelessWidget{
  const DynamicListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DynamicListDemo"),
      ),
    );
  }

}