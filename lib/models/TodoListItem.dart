class TodoListItem{
  TodoListItem({this.title, this.description});

  String title;
  String description;

  TodoListItem copyWith({String title, String description}){
    return TodoListItem(
      title: title ?? this.title, 
      description: description ?? this.description
      );
  }
}