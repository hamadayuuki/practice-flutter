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
        primarySwatch: Colors.blue,   // テーマカラー
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),

      body: Center(
        
      ),

    );// Scaffold
  }
}