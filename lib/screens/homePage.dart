import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/widgets/questions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[400],
          title: Center(
              child: Text(
            "Square2Circle",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.black, fontSize: 20, letterSpacing: .5),
            ),
          )),
        ),
        body: Column(
          children: [
            Questions(
              questionText: "Did you complete task?",
            )
          ],
        ));
  }
}
