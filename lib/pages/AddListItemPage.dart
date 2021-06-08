import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todoaftercovid/redux/AppState.dart';
import 'package:todoaftercovid/redux/Actions.dart';

import 'package:todoaftercovid/models/TodoListItem.dart';

class AddListItemPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final titleController = new TextEditingController();
    final descriptionController = new TextEditingController();

    return StoreConnector<AppState, Store<AppState>>(
      converter: (store) => store, 
      builder: (context, store) =>
      Scaffold(
        appBar: AppBar(title: Text("Add new item"),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          TextField(
            decoration: InputDecoration(
            hintText: "title",
          ),
          controller: titleController,
        ),
        TextField(
            decoration: InputDecoration(
            hintText: "description"
          ),
          controller: descriptionController
        ),
        TextButton(
          child: Text("ADD"),
          onPressed: ()=>{
            store.dispatch(AddTodoItemAction(itemToAdd: TodoListItem(title: titleController.text, description: descriptionController.text)))
          },
          )
      ]
    )
  )
);

  //   return StatefulBuilder(builder: (context, StateSetter setState){
  //     return Scaffold(
  //       appBar: AppBar(title: Text("Add new item"),),
  //       body: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: <Widget>[
  //         TextField(
  //           decoration: InputDecoration(
  //           hintText: "title",
  //         ),
  //         controller: titleController,
  //       ),
  //       TextField(
  //           decoration: InputDecoration(
  //           hintText: "description"
  //         ),
  //         controller: descriptionController
  //       ),
  //       TextButton(
  //         child: Text("ADD"),
  //         onPressed: ()=>{
  //           setState(()=>{
  //             MyAppState.of(context).addItemToList(TodoListItem(title: titleController.text, description: descriptionController.text))
  //           })
            
  //           // Navigator.pop(context)
  //         },
  //         )
  //     ]
  //   )
  // );
  // }); 
  }
}

// class _AddListItemViewModel{
// }