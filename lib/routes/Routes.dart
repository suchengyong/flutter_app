import 'package:flutter/material.dart';
import '../pages/IndexPage.dart';
//配置路由
final routes = {
  '/':(context)=>IndexPage(),
  //'/search':(context,{arguments})=>SearchPage(arguments:arguments)
};

//固定统一处理命名路由传递参数
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context)=>pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context)=>pageContentBuilder(context)
      );
      return route;
    }
  }
};
