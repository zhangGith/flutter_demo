import 'package:flutter/material.dart';
import 'package:flutter_demo3/custom_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FirstPage',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(
              // MaterialPageRoute(
              //   builder: (context) {
              //     return SecondPage();
              //   },
              // ),
              CustomRoute(SecondPage()),
            );
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(
          'SecondPage',
          style: TextStyle(fontSize: 64.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
