import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final buttonIos = CupertinoButton(
    child: Text('Ios Button'),
    color: CupertinoColors.activeBlue,
    pressedOpacity: 0.3,
    disabledColor: Colors.white70,
    onPressed: () {},
  );

  final buttonAndroid = RaisedButton(
    child: Text('Android Button'),
    color: Colors.blue,
    textColor: Colors.white,
    onPressed: () {},
  );

  Widget _getWidgetForPlatform() {
    if(Platform.isAndroid) {
      return buttonAndroid;
    } else {
      return buttonIos;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ), 
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getWidgetForPlatform()
          ],
        ),
      ),    
    );
  }
}