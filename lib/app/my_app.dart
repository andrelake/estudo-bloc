import 'package:bloc_estudos/app/components/home/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Bloc'),),
        body: HomeWidget(),
      ),
    );
  }
}