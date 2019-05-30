import 'package:flutter/material.dart';
    void main(){
  runApp(new MyApp());
    }
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return new MaterialApp(
          title: "My App",
          home:new HomePage(),
        );
      }
    }


    class HomePage extends StatefulWidget {
      @override
      _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {


      String myText="hello world";
      void _changeText(){
        setState(() {
          if(myText.startsWith("h")) {
            myText = "Welcome to hello world";
          }
          else
            {
              myText="hello world";
            }
        });
      }

      Widget _bodyWidget(){
        return new Container(
          padding: const EdgeInsets.all(8.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(myText),
                new RaisedButton(
                  child: new Text("Click"),
                  onPressed:_changeText,
                )
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
        );
      }
    }
    
    
    