import 'package:cyanimg_final/pages/shotpages/search.dart';
import 'package:flutter/material.dart';
import 'list.dart';

class ShotPage extends StatefulWidget {
  @override
  _ShotPageState createState() => _ShotPageState();
}

class _ShotPageState extends State<ShotPage> 
  with SingleTickerProviderStateMixin {
  TabController _tabController;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var tabController = new TabController(vsync: this, initialIndex: 0, length: 2);
    _tabController = tabController;
  }

  @override
  void dispose() {
    ///页面销毁时，销毁控制器
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('摄影圈',
            style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Icon(Icons.camera_alt),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
           onPressed: (){
              showSearch(context: context, delegate: searchBarDelegate());
           },
          ),
          IconButton(
           icon: Icon(Icons.local_grocery_store),
           onPressed: (){
             print('shopping');
           },
          ),
        ],
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              new Tab(text: "同城摄影师"),
              new Tab(text: "同城约拍"),
            ],
          ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListPage(),
          ListPage(),
        ],
      ),
    );
  }
}
