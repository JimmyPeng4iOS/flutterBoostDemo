import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class FlutterHomePage extends StatefulWidget {
  @override
  _FlutterHomePageState createState() => _FlutterHomePageState();
}

class _FlutterHomePageState extends State<FlutterHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              FlutterBoost.singleton.closeCurrent();
            }),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Flutter_Home"),
          RaisedButton(
            child: Text("Go to SecPage"),
            onPressed: () {
              FlutterBoost.singleton.open('sec_page');
            },
          )
        ],
      )),
    );
  }
}
