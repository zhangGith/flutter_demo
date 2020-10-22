import 'package:flutter/material.dart';
import 'package:flutter_demo1/bottom_navigation_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter bottomNavBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
