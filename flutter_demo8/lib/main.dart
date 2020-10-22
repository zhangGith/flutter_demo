import 'package:flutter/material.dart';
import 'expansion_tile_demo.dart';
import 'expansion_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: ExpansionTileListDemo(),
    );
  }
}
