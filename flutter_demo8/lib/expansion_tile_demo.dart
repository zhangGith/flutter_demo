import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  @override
  _ExpansionTileDemoState createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTileDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('expansion tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: [
            ListTile(
              title: Text('list title'),
              subtitle: Text('subtitle'),
            ),
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
