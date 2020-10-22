import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggabelColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableDemo'),
      ),
      body: Stack(
        children: [
          DraggableWidget(
            offset: Offset(80.0, 80.0),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(180.0, 80.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggabelColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggabelColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
