import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:libflutter/flutter_home_page.dart';
import 'package:libflutter/flutter_sec_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initFlutterBoostRouter();
  }

  void initFlutterBoostRouter() {
    FlutterBoost.singleton.registerPageBuilders({
      'flutter_home': (context, paras, _) => FlutterHomePage(),
      'sec_page': (context, paras, _) => FlutterSecPage(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: FlutterBoost.init(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
      ),
    );
  }
}
