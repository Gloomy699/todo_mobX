import 'package:flutter/material.dart';
import 'package:todo_mobx/todo_list.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatelessWidget {
  final _textController = TextEditingController(text: '');

  AddTodo(TodoList todoList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context);

    return TextField(
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'Добавьте задачу!',
        contentPadding: EdgeInsets.all(8.0),
      ),
      controller: _textController,
      textInputAction: TextInputAction.done,
      onSubmitted: (String value) {
        todoList.addTodo(value);
        _textController.clear();
      },
    );
  }
}
