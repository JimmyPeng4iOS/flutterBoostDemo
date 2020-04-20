import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class FlutterSecPage extends StatefulWidget {
  @override
  _FlutterSecPageState createState() => _FlutterSecPageState();
}

class _FlutterSecPageState extends State<FlutterSecPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    super.dispose();
  }

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
      body: Container(
        width: 300,
        height: 600,
        color: Colors.red,
        child: AnimatedBuilder(
          animation: _controller.view,
          builder: (BuildContext context, Widget child) {
            return Text(_controller.value.toString());
          },
        ),
      ),
    );
  }
}
