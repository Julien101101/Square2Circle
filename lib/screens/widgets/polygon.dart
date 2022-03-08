import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class Polygon extends StatefulWidget {
  final int sides;

  const Polygon({Key? key, required this.sides}) : super(key: key);
  @override
  PolygonState createState() => PolygonState();
}

class PolygonState extends State<Polygon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Center(
            child: ClipPolygon(
          sides: widget.sides,
          borderRadius: 2.0, // Default 0.0 degrees
          rotate: 90.0, // Default 0.0 degrees
          boxShadows: [
            PolygonBoxShadow(color: Colors.black, elevation: 1.0),
            PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
          ],
          child: Container(color: Colors.black),
        )));
  }
}
