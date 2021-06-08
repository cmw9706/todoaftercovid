import 'package:flutter/material.dart';

import '../MyAppState.dart';
import '../models/TodoListItem.dart';

class TodoListPage extends StatelessWidget {
  final String title;
  
  TodoListPage({this.title});

  @override
  Widget build(BuildContext context){
    List<TodoListItem> listItems = MyAppState.of(context).listItems;
    
    return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {

      return Scaffold(
      appBar: AppBar(
        title: Text(title),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: listItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text('${listItems[index].title}'),
                  subtitle: Text('${listItems[index].description}'),
                  onTap:() =>{
                    Navigator.pushNamed(context, "details", arguments: index)
                  }
                  ),
              );
            }
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: ()=>{
            setState(()=>{
              MyAppState.of(context).addItemToList(TodoListItem(title:"Get a hair cut", description:"Its seriously been too long.")) 
            })},
          ),
      );
    });
  }
}
