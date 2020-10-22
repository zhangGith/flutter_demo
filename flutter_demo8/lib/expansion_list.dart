import 'package:flutter/material.dart';

class ExpansionTileListDemo extends StatefulWidget {
  @override
  _ExpansionTileListDemoState createState() => _ExpansionTileListDemoState();
}

class _ExpansionTileListDemoState extends State<ExpansionTileListDemo> {
  List<int> mList;
  List<ExpandStateBean> expandStateList;
  _ExpansionTileListDemoState() {
    mList = List();
    expandStateList = List();
    for (int i = 0; i < 15; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(false, i));
    }
  }

  void _setCurrentIndex(int index, bool isExpand) {
    setState(() {
      expandStateList.forEach((element) {
        if (element.index == index) {
          element.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTileListDemo'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            _setCurrentIndex(panelIndex, isExpanded);
          },
          children: mList.map((e) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('This is no.$e'),
                );
              },
              body: ListTile(
                title: Text('expansion no. $e'),
              ),
              isExpanded: expandStateList[e].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.isOpen, this.index);
}
