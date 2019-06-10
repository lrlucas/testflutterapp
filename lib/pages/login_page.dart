import 'package:flutter/material.dart';
import 'package:store2/pages/home_page.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailField = TextField(
    autofocus: false,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Email',
      suffixIcon: Icon(Icons.alternate_email)
    ),
  );

  final _passwordField = TextField(
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Password',
      suffixIcon: Icon(Icons.lock)
    ),
  );

  

  @override
  Widget build(BuildContext context) {

    final _loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: Text(
          'Login',
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            ModalRoute.withName('/')
          );
        },
      ),
    );


    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    'assets/flutter.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox( height: 15.0,),
                _emailField,
                SizedBox( height: 15.0,),
                _passwordField,
                SizedBox( height: 15.0,),
                _loginButton
              ],
            ),
          ),
        ),
      )
    );
  }
}