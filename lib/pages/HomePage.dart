import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('首页'),
        backgroundColor:Colors.grey,
      ),
      body:Text('首页'),
    );
  }
}