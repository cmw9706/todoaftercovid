import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todoaftercovid/pages/AddListItemPage.dart';
import 'package:todoaftercovid/pages/TodoDetailsPage.dart';
import 'package:todoaftercovid/pages/TodoListPage.dart';
import 'package:todoaftercovid/redux/AppState.dart';
import 'package:todoaftercovid/redux/Reducers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initalState()
    );


    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
      title: 'Life after COVID',
      routes: {
        "details": (context) => TodoDetailsPage(),
        "add" : (context) => AddListItemPage()
        },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(title: "Things I want to do after the plague"),
    )
    ); 
  }
}

