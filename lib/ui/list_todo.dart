import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/todo_list_provider.dart';
import 'package:state_management/ui/item_list.dart';

class ListTodo extends StatelessWidget {
  ListTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer(
            builder: (context, TodoListProvider data, widget) {
              return Expanded(
                child: ListView.builder(
                  itemCount: data.todoList.length,
                  itemBuilder: (context, index) {
                    return ItemList(
                      titleTodo: data.todoList[index],
                      isDone: data.complete.contains(data.todoList[index]),
                      onCLick: () {
                        data.addListToComplete(data.todoList[index]);
                      },
                    );
                  },
                ),
              );
            },
          ),
          TextField(),
          // IconButton(onPressed: () {

          // }, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}


//LIST TODO//