import 'package:flutter/material.dart';

class TodoListProvider extends ChangeNotifier {
  final List<String> _todoList = [
    'Membuat takjil',
    'Membuat sahur',
    'Mengerjakan tugas'
  ];
  
  final List<String> _complitedTodoList = [];
  final List<String> _addList = [];

  List<String> get todoList => _todoList;
  List<String> get complete => _complitedTodoList;
  List<String> get data => _addList;

  void addListToComplete(String todo) {
    _complitedTodoList.add(todo);
    notifyListeners();
  }

  void removeListFromComplete(String todo) {
    _complitedTodoList.remove(todo);
    notifyListeners();
  }

  void addData(String todo) {
    _todoList.add(todo);
    notifyListeners();
  }
}
