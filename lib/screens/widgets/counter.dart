import 'package:flutter/material.dart';
import 'package:my_app/screens/widgets/polygon.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int sides = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        sides >= 3 ? Polygon(sides: sides) : Container(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("-"),
                onPressed: (() => {
                      setState(
                        () => {sides--},
                      )
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("+"),
                onPressed: (() => {
                      setState(
                        () => {sides++},
                      )
                    }),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
