import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constans/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;

  final onTodoChanged;

  final onTodoDelete;

  const ToDoItem({Key? key, required this.todo, required this.onTodoChanged, required this.onTodoDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        contentPadding: EdgeInsets.all(7),
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: todo.isDone!
            ? Icon(Icons.check_box, color: tdBlue)
            : Icon(Icons.check_box_outline_blank, color: tdBlue),
        title: Text(
          todo.todoText.toString(),
          style: TextStyle(
              fontSize: 21,
              color: tdBlack,
              decoration: todo.isDone! ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              onTodoDelete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
