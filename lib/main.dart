//import 'package:belajar1/widget/cupertino.dart';
//import 'package:belajar1/widget/fabwidget.dart';
//import 'package:belajar1/widget/image.dart';
//import 'package:belajar1/widget/teks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:belajar1/widget/scaffold.dart';
//import 'package:belajar1/widget/dialogwidget.dart';


void main() {
  runApp(const MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter layout demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,
          middle: Text('Flutter layout demo'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello World'),
            ],
          ),
        ),
      ),
    );
  }
}