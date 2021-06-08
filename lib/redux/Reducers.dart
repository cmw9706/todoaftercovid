import 'package:todoaftercovid/models/TodoListItem.dart';
import 'package:todoaftercovid/redux/Actions.dart';
import 'package:todoaftercovid/redux/AppState.dart';

AppState appStateReducer(AppState state, action){
  return AppState(items: todoListItemReducer(state.items, action));
}

List<TodoListItem> todoListItemReducer(List<TodoListItem> state, action){
  if(action is AddTodoItemAction){
    return []
            ..addAll(state)
            ..add(TodoListItem(title: action.itemToAdd.title, description: action.itemToAdd.description));
  }
  if(action is RemoveTodoItemAction){
    return List.unmodifiable(List.from(state)..remove(action.itemToRemove));
  }
  
  return state;
}