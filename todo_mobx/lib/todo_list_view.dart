import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_mobx/todo_list.dart';
import 'package:provider/provider.dart';

class TodoListView extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TodoListView(this.todoList);
  final TodoList todoList;
  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoList>(context);
    return Observer(
      builder: (_) => Flexible(
        child: ListView.builder(
          itemCount: todoList.visibleTodos.length,
          itemBuilder: (_, index) {
            final todo = todoList.visibleTodos[index];
            return Observer(
                builder: (_) => CheckboxListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              todo.description,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          IconButton(
                            onPressed: () => todoList.removeTodo(todo),
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                      value: todo.done,
                      onChanged: (flag) => todo.done = flag!,
                    ));
          },
        ),
      ),
    );
  }
}
