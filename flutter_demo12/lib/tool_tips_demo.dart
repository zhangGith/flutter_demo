import 'package:flutter/material.dart';

class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolTipsDemo'),
      ),
      body: Center(
        child: Tooltip(
          message: '阿得到的',
          child: Image.network(
              'https://tse2-mm.cn.bing.net/th/id/OIP.Glnx6Ko37Di_FCXW_0gjOQHaLG?pid=Api&rs=1'),
        ),
      ),
    );
  }
}
