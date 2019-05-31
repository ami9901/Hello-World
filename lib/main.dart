import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "hello world";

  void _changeText() {
    setState(() {
      if (myText.startsWith("h")) {
        myText = "Welcome to hello world";
      } else {
        myText = "hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              myText,
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            /*new RaisedButton(
                child: new Text(
                  "Click",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: _changeText,
                color: Colors.red)*/
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: _changeText),
    );
  }
}
