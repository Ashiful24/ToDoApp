import 'package:flutter/material.dart';
import 'package:todo/util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCencel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCencel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyan,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new Task",
            ),
          ),

          //buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save buutton
              MyButton(text: 'Save', onPressed: onSave),

              // Cencel button
              MyButton(text: 'Cancel', onPressed: onCencel),
            ],
          )
        ]),
      ),
    );
  }
}
