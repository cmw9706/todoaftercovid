import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';
import 'package:todoaftercovid/redux/AppState.dart';
class TodoDetailsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments as int;

    return StoreConnector<AppState, TodoListItem>(
      converter: (store) => store.state.items[index],
      builder: (context, todoItem) =>
        Scaffold(
          appBar: AppBar(
            title: Text("${todoItem.title}"),
            ),
            body: Center(
              child: Text("${todoItem.description}")
              ),
            )
      
      );
  }
}