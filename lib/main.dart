import 'package:cyanimg_final/account/grapher/grapher_login.dart';
import 'package:cyanimg_final/pages/homepages/layout.dart';
import 'package:cyanimg_final/pages/shotpages/list.dart';
import 'package:cyanimg_final/pages/shotpages/search.dart';
import 'package:flutter/material.dart';
import 'account/grapher/grapher_register.dart';
import 'account/login.dart';
import 'account/user/registerfirst.dart';
import 'account/user/registersecond.dart';
import 'account/user/user_login.dart';
import 'account/user/userid_login.dart';
import 'loading.dart';
import 'pages/homepages/home_page.dart';
import 'pages/homepages/listview_page.dart';
import 'pages/index_page.dart';
import 'pages/mepages/me_page.dart';
import 'pages/orderpages/order_page.dart';
import 'pages/publishpages/publish_page.dart';
import 'pages/shotpages/shot_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner:false,
        title: '青影之家APP',
        theme: ThemeData(primaryColor: Colors.black),
        home: LoadingPage(),
        routes: {
          '/LoginStart':(context)=>LoginStart(),
          '/Login':(context)=>LoginPage(),
          '/UserID_Login':(context)=>UserIDLoginPage(),
          '/RegisterFirst':(context)=>RegisterFirstPage(),
          '/RegisterSecond':(context)=>RegisterSecondPage(),
          '/GrapherLogin':(context)=>GrapherLoginPage(),
          '/GrapherRegisterFirst':(context)=>GrapherRegisterFirstPage(),
          '/Index':(context)=>IndexPage(),
          '/Home':(context)=>HomePage(),
          '/Shot':(context)=>ShotPage(),
          '/Publish':(context)=>PublishPage(),
          '/Order':(context)=>OrderPage(),
          '/Me':(context)=>MePage(),
          '/GrapherList':(context)=>GrapherList(),
          '/List':(context)=>ListPage(),
          '/Search':(context)=>SearchBarDemo(),
      }, 
    );
  }
}