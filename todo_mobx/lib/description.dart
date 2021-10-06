import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx/todo_list.dart';
import 'package:provider/provider.dart';

class Description extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Description(this.todoList);
  final TodoList todoList;

  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context);

    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          todoList.itemDescription,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
