import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './homepages/home_page.dart';
import './shotpages/shot_page.dart';
import './publishpages/publish_page.dart';
import './orderpages/order_page.dart';
import './mepages/me_page.dart';

class IndexPage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  State<StatefulWidget> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _tabIndex = 0;
  bool isFinishSetup = false;
  List<Icon> _tabImages = [
    Icon(Icons.home, size: 25.0, color: Colors.grey,),
    Icon(Icons.camera_alt, size: 25.0, color: Colors.grey,),
    Icon(Icons.add, size: 25.0, color: Colors.grey,),
    Icon(Icons.reorder, size: 25.0, color: Colors.grey,),
    Icon(Icons.person, size: 25.0, color: Colors.grey,),
  ];
  List<Icon> _tabSelectedImages = [
    Icon(Icons.home, size: 25.0, color: Colors.black,),
    Icon(Icons.camera_alt, size: 25.0, color: Colors.black,),
    Icon(Icons.add, size: 25.0, color: Colors.black,),
    Icon(Icons.reorder, size: 25.0, color: Colors.black,),
    Icon(Icons.person, size: 25.0, color: Colors.black,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          HomePage(),
          ShotPage(),
          PublishPage(),
          OrderPage(),
          MePage(),
        ],
        index: _tabIndex,
      ),
      floatingActionButton: Container(
        height: 61,
        width: 61,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top:8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              Navigator.pushNamed(context,'/Publish');
            });
          },
          backgroundColor: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: Text('首页')),
          BottomNavigationBarItem(icon: getTabIcon(1), title: Text('摄影圈')),
          BottomNavigationBarItem(icon: getTabIcon(2), title: Text('发布')),
          BottomNavigationBarItem(icon: getTabIcon(3), title: Text('订单')),
          BottomNavigationBarItem(icon: getTabIcon(4), title: Text('我')),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Icon getTabIcon(int index) {
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }
}