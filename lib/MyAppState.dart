import 'package:flutter/material.dart';

import 'models/TodoListItem.dart';

class MyAppState extends InheritedWidget{

  MyAppState({this.listItems, Widget child}) : super(child: child);

  final List<TodoListItem> listItems;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static MyAppState of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<MyAppState>();

}