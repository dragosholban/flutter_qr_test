import 'package:flutter/material.dart';

import 'package:flutter_qr_test/CodeReaderScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Demo'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlatButton(
              padding: EdgeInsets.all(16.0),
              color: Color(0xFF5584ff),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new CodeReaderScreen()));
              },
              child: new Text('SCAN TICKET',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
