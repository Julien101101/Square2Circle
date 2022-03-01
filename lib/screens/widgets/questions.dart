import 'package:flutter/material.dart';
import 'package:my_app/screens/widgets/rounded_input_field.dart';
import 'package:my_app/utilities/appColors.dart';
import '../../viewmodels/questionsviewmodel.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class Questions extends StatefulWidget {
  final String? questionText;
  Questions({Key? key, this.questionText}) : super(key: key);

  @override
  QuestionsState createState() => QuestionsState();
}

class QuestionsState extends State<Questions> {
  bool _isEditingText = false;
  TextEditingController? _editingController;
  String initialText = "Initial Text";
  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
  }

  @override
  void dispose() {
    _editingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    QuestionsViewModel questionsViewModel = context.watch<QuestionsViewModel>();
    int sides = 0;

    return Container(
        color: AppColors.backPink,
        child: Center(
            child: Container(
          color: AppColors.insideGreen,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  widget.questionText!,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _editingController,
                    autofocus: true,
                    onSubmitted: (value) {
                      initialText = value;
                      _isEditingText = false;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ))
            ],
          ),
        )));
  }
}
