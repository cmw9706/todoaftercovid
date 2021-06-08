import 'package:flutter/material.dart';
import 'package:todoaftercovid/models/TodoListItem.dart';

@immutable
class AppState{
  final List<TodoListItem> items;
  
  AppState({this.items});

  AppState.initalState() : items = List.unmodifiable(<TodoListItem>[]);
}