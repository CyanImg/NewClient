import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../../widget/text.dart';

class GrapherRegisterFirstPage extends StatefulWidget {
  GrapherRegisterFirstPage({Key key}) : super(key: key);

  _GrapherRegisterFirstPageState createState() => _GrapherRegisterFirstPageState();
}

class _GrapherRegisterFirstPageState extends State<GrapherRegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('摄影师注册'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                CyanText(
                  text: "请输入邮箱",
                  password: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                Positioned(
                  right:20,
                  top: 10,
                  child: RaisedButton(
                    child: Text('发送验证码'),
                    onPressed: (){

                    },
                  ),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                CyanText(
                  text: "请输入验证码",
                  password: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                Positioned(
                  right: 17,
                  top: 10,
                  child: RaisedButton(
                    child: Text('重新发送'),
                    onPressed: (){

                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            CyanButton(
              text: "下一步",
              color: Colors.black,
              cb: (){
                Navigator.pushNamed(context,'/GrapherRegisterSecond');
              },
            )
          ],
        ),
      ),
    );
  }
}