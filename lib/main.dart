import 'package:flutter/material.dart';   // Widget を使うためのライブラリ

void main() {
  runApp(const MyTodoApp());
}


class MyTodoApp extends StatelessWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',   // アプリ名
      theme: ThemeData(
        primarySwatch: Colors.green,   // テーマカラー
      ),
      
      // リスト一覧画面を表示
      home: const TodoListPage(),   // 起動時に表示する画面
    );
  }
}


class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}


class _TodoListPageState extends State<TodoListPage> {

  // TODOリストのデータ
  List<String> todoList = ["あいうえお", "かきくけこ", "さしすせそ", "たちつてと"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("TODOアプリ"),
      ),

      body: Center(

        child: ListView.builder(
          itemCount: todoList.length,   // リスト数 (=配列の要素数)
          itemBuilder: (context, index) {
            return Text(todoList[index]);
          }
        )// ListView.builder

      ),

    );// Scaffold
  }
}