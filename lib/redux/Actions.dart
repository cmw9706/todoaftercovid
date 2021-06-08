import 'package:todoaftercovid/models/TodoListItem.dart';


class AddTodoItemAction{
  final TodoListItem itemToAdd;
  
  AddTodoItemAction({this.itemToAdd});
   
}

class RemoveTodoItemAction{
  final TodoListItem itemToRemove;
  
  RemoveTodoItemAction({this.itemToRemove});

}