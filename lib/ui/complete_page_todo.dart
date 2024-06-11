import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/todo_list_provider.dart';

class CompletePageTodo extends StatelessWidget {
  const CompletePageTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final completedTodoList =
        Provider.of<TodoListProvider>(context, listen: false).complete;

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Complete"),
        centerTitle: true,
      ),
      body: Consumer(
        builder: (context, TodoListProvider data, Widget) {
          return ListView.builder(
              itemCount: data.complete.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data.complete[index]),
                  trailing: IconButton(
                      onPressed: () {
                        data.removeListFromComplete(data.complete[index]);
                      },
                      icon: Icon(Icons.remove)),
                );
              });
        },
      ),
    );
  }
}




//COMPLETE PAGE//