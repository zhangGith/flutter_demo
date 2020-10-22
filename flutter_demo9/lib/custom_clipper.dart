import 'package:flutter/material.dart';

class CustomClipperDemo extends StatefulWidget {
  @override
  _CustomClipperDemoState createState() => _CustomClipperDemoState();
}

class _CustomClipperDemoState extends State<CustomClipperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: BottomClipperTest(),
            child: Container(
              color: Colors.deepOrangeAccent,
              height: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomClipperTest extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    int offsetHeight = 50;
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - offsetHeight);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var secondControlPoint =
        Offset(size.width * 3 / 4, size.height - 2 * offsetHeight);
    var firstEndPoint = Offset(size.width / 2, size.height - offsetHeight);
    var secondEndPoint = Offset(size.width, size.height - offsetHeight);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    int offsetHeight = 50;
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - offsetHeight);
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - offsetHeight);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    // path.lineTo(size.width, size.height - offsetHeight);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
