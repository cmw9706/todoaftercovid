import 'package:flutter/material.dart';
import 'package:todoaftercovid/pages/TodoDetailsPage.dart';
import 'package:todoaftercovid/pages/TodoListPage.dart';
import 'MyAppState.dart';
import 'models/TodoListItem.dart';

void main() {
  runApp(
    MyAppState(
      listItems:  List.from([
        TodoListItem(title: "Go to Austin, TX", description: "I want to go party on Congress street"),
        TodoListItem(title: "Get tattooed in a different city", description: "Need to look up artist in Baltimore and Philly"),
      ]),
      child: MyApp()
    )
    );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life after COVID',
      routes: {
        "details": (context) => TodoDetailsPage(),
        },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(title: "Things I want to do after the plague"),
    );
  }
}

