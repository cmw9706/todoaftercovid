import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';
import 'package:todoaftercovid/redux/AppState.dart';
import 'package:redux/redux.dart';
import 'package:todoaftercovid/redux/Actions.dart';

class TodoListPage extends StatelessWidget {
  final String title;

  TodoListPage({this.title});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        builder: (context, store) => Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
                child: ListView.builder(
                    itemCount: store.state.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                          key: Key(store.state.items[index].title),
                          onDismissed: (direction)=>{
                            store.dispatch(RemoveTodoItemAction(itemToRemove: store.state.items[index]))  
                          },
                          child: Card(
                          child: ListTile(
                              title: Text('${store.state.items[index].title}'),
                              subtitle: Text('${store.state.items[index].description}'),
                              onTap: () => {
                                    Navigator.pushNamed(context, "details",
                                        arguments: index)
                                  }),
                      ));
                    })),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => {Navigator.pushNamed(context, "add")},
            )));
  }
}
