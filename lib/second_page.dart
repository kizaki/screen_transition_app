import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String text;
  NextPage(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次のページ'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop<String>(context, "画面遷移した");
              },
              child: Text('Go back'),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
