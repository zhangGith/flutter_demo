import 'package:flutter/material.dart';
import 'pages/email_screen.dart';
import 'pages/home_screen.dart';
import 'pages/pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> items = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    items..add(HomeScreen())..add(PagesScreen())..add(EmailScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            // title: Text(
            //   'Home',
            //   style: TextStyle(color: _bottomNavigationColor),
            // ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            // title: Text(
            //   'Home',
            //   style: TextStyle(color: _bottomNavigationColor),
            // ),
            label: 'Pages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            // title: Text(
            //   'Home',
            //   style: TextStyle(color: _bottomNavigationColor),
            // ),
            label: 'Email',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
