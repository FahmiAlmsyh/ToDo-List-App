import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/todo_list_provider.dart';
import 'package:state_management/ui/complete_page_todo.dart';
import 'package:state_management/ui/list_todo.dart';

class MainPageTodo extends StatelessWidget {
  MainPageTodo({super.key});

  final TextEditingController _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Application"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompletePageTodo(
                            // complateTodoList: _complitedTodoList,
                            )));
              },
              icon: Icon(Icons.done))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: _text,
              )),
              IconButton.filled(
                onPressed: () {
                  Provider.of<TodoListProvider>(context, listen: false)
                      .addData(_text.text);
                  _text.clear();
                },
                icon: Icon(Icons.done),
                color: Colors.white,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          ),
          Expanded(child: ListTodo())
        ],
      ),
    );
  }
}
