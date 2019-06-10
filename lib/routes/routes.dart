import 'package:flutter/material.dart';
import 'package:store2/pages/home_page.dart';
import 'package:store2/pages/login_page.dart';


Map <String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'     : (BuildContext context) => HomePage(),
    'login' : (BuildContext context) => LoginPage(),
  };
}

