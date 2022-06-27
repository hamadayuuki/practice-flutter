import 'package:flutter/material.dart';   // Widget を使うためのライブラリ

// アプリ起動時に呼び出される
void main() {
  runApp(const MyTodoApp());
}


// 初めに表示する画面を指定する
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


// UIでの入力内容を変数へ同期させるために必要, 魔法の言葉
class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}


// リスト一覧画面
class _TodoListPageState extends State<TodoListPage> {

  // TODOリストのデータ
  List<String> todoList = [];
  String _text = "";   // 入力した文字が入る

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // アプリバー(画面上)
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),

      // 画面
      body: Center(
        
        // TODOリスト表 + 文字入力 の縦並び
        child: Column(
          children: [
            
            // TODOリスト表
            Expanded(
              flex: 1,
              
              // 【TODOリストを表示】
              child: 
              
              // ===========
              
            ),// Expanded
            
            // 文字入力画面・リスト追加ボタン
            Expanded(
              flex: 1,
              child: Column(
                
                children: [

                  // 文字入力画面
                  TextField(
                    onChanged: (String inputString) {
                      setState( (){
                        // 【入力された文字を _text へ代入】
                        
                        // ==========
                      });
                    }
                  ),

                  // 余白
                  const SizedBox(height: 8),

                  // 【リスト追加ボタン(+ todoListへの要素追加)】
                  
                  // ==========

                  // 余白
                  ,const SizedBox(height: 8),

                ]
              )
            ),// Expanded
          ]
        )
      ),// Center

    );
  }
}