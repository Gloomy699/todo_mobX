import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_mobx/action_bar.dart';
import 'package:todo_mobx/add_todo.dart';
import 'package:todo_mobx/description.dart';
import 'package:todo_mobx/todo_list.dart';
import 'package:todo_mobx/todo_list_view.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  late TodoList todoList;
  late ReactionDisposer disposer;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    todoList = TodoList();
    disposer = autorun((_) {
      if (todoList.todos.isEmpty && todoList.wasFulfiled) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Все дела выполнены'),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<TodoList>(
      create: (_) => todoList,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Todo list example'),
        ),
        body: Column(
          children: [
            AddTodo(todoList),
            ActionBar(todoList),
            Description(todoList),
            TodoListView(todoList),
          ],
        ),
      ),
    );
  }
}
