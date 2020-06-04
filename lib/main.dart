import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉dug显示
      title: 'flutter_app',
      theme: ThemeData(
        //主题定义
        primaryColor: Colors.red,
      ),
      initialRoute: '/',//初始化路由
      onGenerateRoute: onGenerateRoute,
      //中文汉化配置
      localizationsDelegates: [ //此处
        GlobalEasyRefreshLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [ //此处
        //const Locale('en','US'), //注释掉才能使得中文有效
        const Locale('zh','CN'),
        //const Locale('zh','CH'),
      ],
    );
  }
}
