import 'package:flutter/material.dart';
import '../MyAppState.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';

class NewTodoItemPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final titleController = new TextEditingController();
    final descriptionController = new TextEditingController();

    return StatefulBuilder(builder: (context, StateSetter setState){
      return Scaffold(
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
            setState(()=>{
              MyAppState.of(context).addItemToList(TodoListItem(title: titleController.text, description: descriptionController.text))
            })
            
            // Navigator.pop(context)
          },
          )
      ]
    )
  );
  });
  }
}