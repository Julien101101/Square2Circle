import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:my_app/screens/widgets/rounded_input_field.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/questionsviewmodel.dart';


class Questions extends StatefulWidget {
  final String? questionText;
  const Questions({Key? key, this.questionText}) : super(key: key);

  @override
  QuestionsState createState() => QuestionsState();
}

class QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    QuestionsViewModel questionsViewModel = context.watch<QuestionsViewModel>();
    int sides = 0;

    return Container(
      child: RoundedInputField(
        textInputType: TextInputType.text,
        hintText: widget.questionText,
        onChanged: (value) {
          if (value == "yes") {
            sides++;
          } else {
            sides--;
          }

        },
      ),
    );
  }
}
