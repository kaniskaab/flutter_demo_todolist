 import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function()? deleteFunction;
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged, 
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),

       child: Container(
            padding: EdgeInsets.all(24),
            color: Colors.deepPurple[300],


            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: taskCompleted, onChanged: onChanged),

                
                Text(
                  taskName,
                  style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              
              
              TextButton(
              style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.red.shade200),
  ),
  onPressed: deleteFunction,
  child: Icon(Icons.delete),
)


              ],
            )),
    );
  }
}
