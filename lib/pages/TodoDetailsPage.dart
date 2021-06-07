import 'package:flutter/material.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';
import 'package:todoaftercovid/MyAppState.dart';
class TodoDetailsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments as int;
    final TodoListItem todoItem = MyAppState.of(context).listItems[index];

    return Scaffold(
      appBar: AppBar(
        title: Text("${todoItem.title}"),
        ),
        body: Center(
          child: Text("${todoItem.description}")
          ),
        );
  }

}