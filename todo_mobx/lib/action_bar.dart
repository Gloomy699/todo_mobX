import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx/todo_list.dart';
import 'package:provider/provider.dart';

class ActionBar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ActionBar(TodoList todoList);

  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context);

    return Column(
      children: [
        Observer(
          builder: (_) => Column(
            children: [
              RadioListTile(
                  title: const Text('Все'),
                  value: VisibilityFilter.all,
                  groupValue: todoList.filter,
                  onChanged: (filter) =>
                      todoList.filter = VisibilityFilter.all),
              RadioListTile(
                  title: const Text('Ожидают выполнения'),
                  value: VisibilityFilter.pending,
                  groupValue: todoList.filter,
                  onChanged: (filter) =>
                      todoList.filter = VisibilityFilter.pending),
              RadioListTile(
                  title: const Text('Завершены'),
                  value: VisibilityFilter.completed,
                  groupValue: todoList.filter,
                  onChanged: (filter) =>
                      todoList.filter = VisibilityFilter.completed),
            ],
          ),
        ),
        Observer(
          builder: (_) => ButtonBar(
            children: [
              ElevatedButton(
                  child: const Text('Удалить завершенные'),
                  onPressed: todoList.canRemoveAllCompleted
                      ? todoList.removeCompleted
                      : null),
              ElevatedButton(
                  child: const Text('Пометить все как выполненные'),
                  onPressed: todoList.canMarkAllAsCompleted
                      ? todoList.markAllAsCompleted
                      : null),
            ],
          ),
        ),
      ],
    );
  }
}
