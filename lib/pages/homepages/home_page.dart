import 'dart:ui';
import '../../data.dart';
import '../../model/publish.dart';
import 'package:cyanimg_final/pages/shotpages/search.dart';
import 'package:flutter/material.dart';
import 'home_banner.dart';
import 'layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  Map<String, List<Map<String, String>>> listData = publish; 
  @override
  void initState() {
    super.initState();
  }
  final loginButton = FlatButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.location_on,
        size: 25.0,
        color: Colors.grey,
      ),
      label: Text(
        "定位",
        style: TextStyle(color: Colors.grey, fontSize: 16.0),
      ));

  Widget barSearch() {
    return  new 
       Row(
      
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: new FlatButton.icon(
              color: Colors.black12,
              onPressed: () {
                 showSearch(context: context, delegate: searchBarDelegate());
              },
              icon: new Icon(
                Icons.search,
                size: 25.0,
                color: Colors.grey,
              ),
              label: new Text(
                "搜索高校/高校摄影师",
                style: new TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
          ),
        ),
        loginButton
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('青影之家',
        style: TextStyle(
              color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.home),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          // 同城摄影师
           barSearch(),
          // 插件
           BannerWidget(),
           LayoutDemo(listData),
        ],
      ),
      
    );
  }
}
