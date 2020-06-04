import 'package:flutter/material.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('发现'),
        backgroundColor:Colors.grey,
      ),
      body:Text('发现'),
    );
  }
}