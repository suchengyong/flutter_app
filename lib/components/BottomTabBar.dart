import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  final index;
  final Function curretIndexCallback;
  BottomTabBar({Key key,this.index=0,this.curretIndexCallback}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState(this.index,this.curretIndexCallback);
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _currentIndex = 0;
  Function callback;
  _BottomTabBarState(index,curretIndexCallback) {
    this._currentIndex = index;
    this.callback = curretIndexCallback;
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this._currentIndex,//选中那个
      iconSize: 36.0,//图标大小
      fixedColor: Colors.red,//选中的颜色
      type: BottomNavigationBarType.fixed,//底部BottomTabBar可以有多个按钮
      onTap: (int index){
        setState(() {
          this._currentIndex = index;
          this.callback(index);
        });
      },
      items:[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          title:Text('首页')
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.info),
          title:Text('消息')
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.find_in_page),
          title:Text('发现')
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.people),
          title:Text('我的')
        )
      ] ,
    );
  }
}
