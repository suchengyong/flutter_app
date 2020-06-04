import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('我的'),
      ),
      body:Text('我的'),
    );
  }
}