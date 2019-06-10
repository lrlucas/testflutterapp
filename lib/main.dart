import 'package:flutter/material.dart';
import 'package:store2/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      initialRoute: _validarLoginUsuario(),
      routes: getApplicationRoutes(),
    );
  }

  _validarLoginUsuario() {
    if(isLogin == true) {
      return '/';
    } else {
      return 'login';
    }
  }
}