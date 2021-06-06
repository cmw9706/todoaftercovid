import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life after COVID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(title: "Things I want to do after the plague"),
    );
  }
}

class TodoListItem{
  TodoListItem({this.title, this.description});

  String title;
  String description;
}

List<TodoListItem> _getListItems(){
  return List.from([
    TodoListItem(title: "Go to Austin, TX", description: "I want to go party on Congress street"),
    TodoListItem(title: "Get tattooed in a different city", description: "Need to look up artist in Baltimore and Philly"),
  ]);
}

class TodoListPage extends StatefulWidget {
  final String title;
  
  TodoListPage({this.title});

  @override
  _TodoListState createState() => _TodoListState(listItems: _getListItems(), title: title);
}

class _TodoListState extends State<TodoListPage>{
  
  _TodoListState({this.listItems, this.title});
  List<TodoListItem> listItems;
  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        ),
      body: Center(
        child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text('${listItems[index].title}'),
                subtitle: Text('${listItems[index].description}'),
                ),
            );
          }
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>{},
        ),
    );
  }
}
