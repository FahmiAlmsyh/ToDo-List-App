import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String titleTodo;
  final bool isDone;
  final Function() onCLick;
  ItemList({super.key, required this.titleTodo, required this.isDone, required this.onCLick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titleTodo.toString()),
      trailing: IconButton(
          onPressed: () {},
          icon: isDone
              ? Icon(Icons.done)
              : ElevatedButton(onPressed: onCLick, child: Text("Done"))),
    );
  }
}


//ITEM LIST//