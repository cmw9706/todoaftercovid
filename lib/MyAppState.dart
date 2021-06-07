import 'package:flutter/material.dart';

import 'TodoListItem.dart';

class MyAppState extends InheritedWidget{

  MyAppState({this.listItems, Widget child}) : super(child: child);

  final List<TodoListItem> listItems;
  

  void addItemToList(TodoListItem newItem){
    listItems.add(newItem);
  }
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static MyAppState of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<MyAppState>();

}