// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoList on _TodoList, Store {
  Computed<ObservableList<Todo>>? _$pendingTodosComputed;

  @override
  ObservableList<Todo> get pendingTodos => (_$pendingTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.pendingTodos,
              name: '_TodoList.pendingTodos'))
      .value;
  Computed<ObservableList<Todo>>? _$completedTodosComputed;

  @override
  ObservableList<Todo> get completedTodos => (_$completedTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.completedTodos,
              name: '_TodoList.completedTodos'))
      .value;
  Computed<bool>? _$hasCompletedTodosComputed;

  @override
  bool get hasCompletedTodos => (_$hasCompletedTodosComputed ??= Computed<bool>(
          () => super.hasCompletedTodos,
          name: '_TodoList.hasCompletedTodos'))
      .value;
  Computed<bool>? _$hasPendingTodosComputed;

  @override
  bool get hasPendingTodos =>
      (_$hasPendingTodosComputed ??= Computed<bool>(() => super.hasPendingTodos,
              name: '_TodoList.hasPendingTodos'))
          .value;
  Computed<String>? _$itemDescriptionComputed;

  @override
  String get itemDescription => (_$itemDescriptionComputed ??= Computed<String>(
          () => super.itemDescription,
          name: '_TodoList.itemDescription'))
      .value;
  Computed<ObservableList<Todo>>? _$visibleTodosComputed;

  @override
  ObservableList<Todo> get visibleTodos => (_$visibleTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.visibleTodos,
              name: '_TodoList.visibleTodos'))
      .value;
  Computed<bool>? _$canRemoveAllCompletedComputed;

  @override
  bool get canRemoveAllCompleted => (_$canRemoveAllCompletedComputed ??=
          Computed<bool>(() => super.canRemoveAllCompleted,
              name: '_TodoList.canRemoveAllCompleted'))
      .value;
  Computed<bool>? _$canMarkAllAsCompletedComputed;

  @override
  bool get canMarkAllAsCompleted => (_$canMarkAllAsCompletedComputed ??=
          Computed<bool>(() => super.canMarkAllAsCompleted,
              name: '_TodoList.canMarkAllAsCompleted'))
      .value;

  final _$todosAtom = Atom(name: '_TodoList.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$filterAtom = Atom(name: '_TodoList.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$wasFulfiledAtom = Atom(name: '_TodoList.wasFulfiled');

  @override
  bool get wasFulfiled {
    _$wasFulfiledAtom.reportRead();
    return super.wasFulfiled;
  }

  @override
  set wasFulfiled(bool value) {
    _$wasFulfiledAtom.reportWrite(value, super.wasFulfiled, () {
      super.wasFulfiled = value;
    });
  }

  final _$_TodoListActionController = ActionController(name: '_TodoList');

  @override
  void addTodo(String description) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.addTodo');
    try {
      return super.addTodo(description);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(Todo todo) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.removeTodo');
    try {
      return super.removeTodo(todo);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(VisibilityFilter filter) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.changeFilter');
    try {
      return super.changeFilter(filter);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCompleted() {
    final _$actionInfo = _$_TodoListActionController.startAction(
        name: '_TodoList.removeCompleted');
    try {
      return super.removeCompleted();
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllAsCompleted() {
    final _$actionInfo = _$_TodoListActionController.startAction(
        name: '_TodoList.markAllAsCompleted');
    try {
      return super.markAllAsCompleted();
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
filter: ${filter},
wasFulfiled: ${wasFulfiled},
pendingTodos: ${pendingTodos},
completedTodos: ${completedTodos},
hasCompletedTodos: ${hasCompletedTodos},
hasPendingTodos: ${hasPendingTodos},
itemDescription: ${itemDescription},
visibleTodos: ${visibleTodos},
canRemoveAllCompleted: ${canRemoveAllCompleted},
canMarkAllAsCompleted: ${canMarkAllAsCompleted}
    ''';
  }
}
