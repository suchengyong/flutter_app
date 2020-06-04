import 'package:flutter/material.dart';
import 'FindPage.dart';
import 'HomePage.dart';
import 'InfoPage.dart';
import 'UserPage.dart';
import '../components/BottomTabBar.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    InfoPage(),
    FindPage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex], //body部分
      bottomNavigationBar: BottomTabBar(
        index: this._currentIndex,
        curretIndexCallback:(index){
          this.setState(() {
            this._currentIndex = index;
          });
        }
      )
    );
  }
}