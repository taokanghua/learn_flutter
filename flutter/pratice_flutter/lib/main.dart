import 'package:flutter/material.dart';

import './demo/01-scaffoldBasic.dart';
import './demo/02-topTabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter练习',
      home: TopTabbar(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //高亮颜色
        splashColor: Colors.white24, //水波纹颜色
      ),
    );
  }
}
