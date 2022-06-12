import 'package:flutter/material.dart';

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





class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }





  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
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
