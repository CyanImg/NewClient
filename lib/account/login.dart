import 'package:flutter/material.dart';
class LoginStart extends StatefulWidget {
  @override
  _LoginStartState createState() => _LoginStartState();
}

class _LoginStartState extends State<LoginStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
           Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 700.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('青影之家APP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.white,
                  child: Text('用户登录'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/Login');
                  },
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 440.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.white,
                  child: Text('用户注册'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/RegisterFirst');
                  },
                ),
              ],
            ),
          ),
           Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 380.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.white,
                  child: Text('摄影师登录'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/GrapherLogin');
                  },
                ),
              ],
            ),
          ),
           Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 320.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.white,
                  child: Text('摄影师注册'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/GrapherRegisterFirst');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
