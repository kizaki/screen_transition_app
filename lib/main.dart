import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(MyApp());
}

/*
  画面遷移するアプリ
    Flutterでは、画面（ページ）もすべてウィジェットである
    新しい画面に遷移するときや戻るときにNavigatorクラスを利用する
    ・「Navigator.push()」メソッドを使って、新しいルートに遷移する
    ・「Navigator.pop()」メソッドを使って、元のルートに戻る
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Transition Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(title: 'First Page'),
    );
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          // ボタンを押下したときにMaterialPageRouteクラスを利用する。
          // このクラスを使うとそれぞれのそれぞれのプラットフォームの画面遷移アニメーションがなされる。
          // Routeクラスは画面を抽象化したものである。
          // スタックに保持されるものは、このRouteクラスになる。
          onPressed: () async {
            var message = Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NextPage("データ"),
                  fullscreenDialog: true,
                ));
            print(message);
          },
          child: Text('NextPage'),
        ),
      ),
    );
  }
}
