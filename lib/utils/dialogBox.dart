import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/my_button.dart';

class Dialogbox extends StatelessWidget {
  final TextEditingController controller;
  // final VoidCallback onSave;
  Function(BuildContext)? onSave;
  final VoidCallback onCancel;

  Dialogbox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[800],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              style: TextStyle(color: Colors.white), // Set text color to white
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task!",
                hintStyle:
                    TextStyle(color: Colors.white), // Set hint color to white
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(
                    text: "Save",
                    onPressed: () {
                      onSave!(context);
                      controller.clear();
                    }),
                const SizedBox(width: 8),
                // Cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
