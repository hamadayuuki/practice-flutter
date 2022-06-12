import 'package:flutter/material.dart';

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
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
      ),
      // リスト一覧画面を表示
      home: const TodoListPage(),   // 起動時に表示する画面
    );
  }
}


// ■ リスト一覧画面
class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        // ① : TODOをリストで表示 ===========
        child: ListView(
          children: <Widget>[

            // にんじん
            Card(child: ListTile(
              title: Text("にんじんを買う")
              )
            ),

            // 玉ねぎ
            Card(child: ListTile(
                title: Text("玉ねぎを買う")
              )
            ),

            // じゃがいも
            Card(child: ListTile(
                title: Text("じゃがいもを買う")
              )
            ),

            // カレー粉
            Card(child: ListTile(
                title: Text("カレー粉を買う")
              )
            ),

          ]
        ),
        // ① ======================
      ),

      // TODO追加ボタン
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // 画面遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            })
          );

        },
        child: Icon(Icons.add)
      )

    );
  }
}


// + リスト追加画面
class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            // 前画面へ戻る, .pop()
            Navigator.of(context).pop();
          },
          child: Text("リスト追加画面(クリックで戻る)")
        )
      )
    );
  }
}






// ================================================================================
// Flutter 練習用
/*
void main() {
  runApp(const MyApp());
}





class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




// State を使うクラスを指定する
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




// State を使うクラス
// 変数 や Widget を作る, Widget の作り方はこれまでと同じ
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }





  @override
  Widget build(BuildContext context) {

    // 変数の定義はここで行う →→→→→
    var _screenSize = MediaQuery.of(context).size;
    const listItems = [
      "First Label",
      "Second Label",
      "Third Label"
    ];
    // ←←←←←

    return Scaffold(
      appBar: AppBar(


        // アプリバー(画面上)

        /*
        // 左側のアイコン
        leading: Icon(Icons.arrow_back),
        // タイトルテキスト
        title: Text('Hello'),
        // 右側のアイコン一覧
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
         */


      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // 文字
            /*
            // 太さを指定
            Text('Bold', style: TextStyle(fontWeight: FontWeight.bold)),
            // スタイルを指定
            Text('Italic', style: TextStyle(fontStyle: FontStyle.italic)),
            // サイズを指定
            Text('fontSize = 36', style: TextStyle(fontSize: 36)),
            // 色を指定
            Text('Red', style: TextStyle(color: Colors.red)),
            Container(
              width: double.infinity,
              color: Colors.grey,
              // 表示位置を指定
              child: Text('TextAlign.center', textAlign: TextAlign.center),
            ),
            */


            // Containar Widget
            /*
            // 幅や高さ, 文字色, パディング, マージン
            Container(
              width: 100,                   // 幅
              height: 100,                  // 高さ
              color: Colors.red,            // 背景色
              child: Text("あいうえお"),      // 文字
              padding: EdgeInsets.all(8),   // パディング (要素内側余白)
              margin: EdgeInsets.all(10),   // マージン   (要素外側余白)
            ),

            // 枠線
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 10),   // 枠線
                borderRadius: BorderRadius.circular(8),             // 角丸
              ),
              child: Text('border'),
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(50),
            ),

            // 画像
            Container(
              decoration: BoxDecoration(
                color: Colors.red,   // 背景色, decoration内に入れる
                image: DecorationImage(
                  image: NetworkImage("https://www.ghibli.jp/gallery/chihiro025.jpg"),   // インターネットの画像
                ),
              ),
              width: _screenSize.width * 0.8,
              height: _screenSize.height * 0.3,
            ),
             */


            // 縦/横並び
            /*
            // 縦並び, Column
            Container(
              height: 100,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              // Column は child に指定する
              child: Column(
                // 要素を配列として格納
                  children: <Widget>[
                    Text('first line'),
                    Text('second line'),
                    Text('third line'),
                  ]
              ),
            ),

            // 横並び, Row
            Container(
              child: Row(
                // 要素を配列として格納
                  children: <Widget>[
                    // Container で表現, 並べる要素ごとに背景色や大きさを指定可能になる
                    Container(color: Colors.blue, child: Text("First Line")),
                    Container(color: Colors.yellow, child: Text("Second Line")),
                    Container(
                        color: Colors.red,
                        child: Text("Third Line"),
                        width: 100,
                        height: 30,
                        margin: EdgeInsets.all(20),

                    ),
                  ]
              ),
            ),
             */

            // ボタン, アイコンボタン

            /*
            // ボタン 3種類
            Container(
              // 横並び, 今回は3つのボタン(①〜③)
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // 端 や 要素 全ての間隔を均等にする
                // 横並びにする要素の指定
                children: <Widget>[
                  // ① : 背景色のないボタン
                  TextButton(
                    onPressed: () { /* ボタンがタップされた時の処理 */ },
                    child: Text('click here'),
                  ),

                  // ② : 背景色のあるボタン
                  ElevatedButton(
                    onPressed: () { /* ボタンがタップされた時の処理 */ },
                    child: Text('click here'),
                  ),

                  // ③ : 枠線のみ
                  OutlinedButton(
                    onPressed: () { /* ボタンがタップされた時の処理 */ },
                    child: Text('click here'),
                  ),
                ]
              )
            ),

            // ボタンのオプション
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // 端 や 要素 全ての間隔を均等にする
                    // 横並びにする要素の指定
                    children: <Widget>[
                      // 押せない
                      TextButton(
                        onPressed:  null,   // ボタンを押せない
                        child: Text('disenable'),
                      ),

                      // デザイン
                      ElevatedButton(
                        onPressed: () { /* ボタンがタップされた時の処理 */ },
                        child: Text('click here'),
                        // ボタンのデザイン
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,   // 色
                          elevation: 10,         // 影
                        ),
                      ),

                      // 文字のデザイン
                      OutlinedButton(
                        onPressed: () { /* ボタンがタップされた時の処理 */ },
                        child: Container(
                          child: Text(
                              'click here',                    // 文字の内容
                              // 文字のデザイン, Text()内に書く
                              style: TextStyle(
                                fontSize: 30,                  // 文字の大きさ
                                color: Colors.red,             // 文字色
                                fontWeight: FontWeight.bold,   // 文字の太さ
                            ),
                          ),

                        ),
                      ),
                    ]
                )
            ),

            // アイコンボタン
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // 端 や 要素 全ての間隔を均等にする
                children: <Widget>[
                  // ハートボタン
                  IconButton(
                    icon: Icon(Icons.favorite),    // 種類(一覧 : https://fonts.google.com/icons?selected=Material+Icons)
                    iconSize: 50,                  // 大きさ
                    color: Colors.pink,            // 色
                    onPressed: () {},              // ボタンを押した時の処理
                  ),

                  //
                  ElevatedButton.icon(
                    // アイコンのデザイン
                    icon: Icon(
                      Icons.face,                       // 種類(一覧 : https://fonts.google.com/icons?selected=Material+Icons)
                      size: 50,                         // 大きさ
                      color: Colors.white,              // 色
                    ),
                    // ボタン全体のデザイン
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,             //背景色
                    ),
                    label: Text("押してね"),
                    onPressed: () {},                   // ボタンを押した時の処理
                  ),
                ]
              ),
            ),
             */


            // リスト

            /*
            // 単純なリスト
            Container(
                height: _screenSize.height * 0.5,   // 高さを決めないと表示されない
                color: Colors.green,

                // リスト
                child: ListView(
                  children: <Widget>[
                    Text('Item 1'),
                    Text('Item 2'),
                    Text('Item 3'),
                  ],
                )
            ),

            // 配列を用いたリスト
            // 配列の定義は変数を定義するところで行う
            Container(
              height: _screenSize.height * 0.3,    // 高さを決めないと表示されない
              color: Colors.yellow,

              //  配列をもとに作成
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {

                  // 表示するリストのデザイン
                  return Container(
                      height: 30,                   // 高さ
                      margin: EdgeInsets.all(10),   // マージン(要素外側余白)
                      color: Colors.blue,           // 背景色
                      child: Text(listItems[index]) // 文字
                  );
                },
              ),
            ),

            // カード をリスト表示
            Container(
              // 影のついたカードUIが作れる
              child: Card(
                child: Container(
                  alignment: Alignment.center,   // child? 上下左右 中央揃え
                  height: 60,
                  color: Colors.red,
                  width: double.infinity,

                  // 表示する要素
                  child: Text(
                      'Card',
                      style: TextStyle(
                        fontSize: 30,                   // 文字の大きさ
                        color: Colors.white,            // 文字色
                        fontWeight: FontWeight.bold,    // 文字の太さ
                      ),
                  ),
                ),
              )
            )
             */





            /*
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            */

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 */
