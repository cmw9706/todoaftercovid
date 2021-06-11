import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';
import 'package:todoaftercovid/redux/AppState.dart';

class TodoListPage extends StatelessWidget {
  final String title;
  
  TodoListPage({this.title});

  @override
  Widget build(BuildContext context){ 
    return StoreConnector<AppState, List<TodoListItem>>(
      converter: (store) => store.state.items, 
      builder: (context, items)=>
         Scaffold(
          appBar: AppBar(
            title: Text(title),
            ),
            body: Center(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text('${items[index].title}'),
                      subtitle: Text('${items[index].description}'),
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
                Navigator.pushNamed(context, "add")
            },
          )
        )
      );
  }
}
