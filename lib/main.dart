import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/todo_list_provider.dart';
import 'package:state_management/ui/main_page_todo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TodoListProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPageTodo(),
        ));
  }
}
