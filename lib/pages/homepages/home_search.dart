import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchState();
  }
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
//      centerTitle: true,
      backgroundColor: Colors.black,
      title: TextFileWidget(),
      automaticallyImplyLeading: false,
//      actions: <Widget>[
//        new Center(
//          child: Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text(
//              "Cancel",
//            ),
//          ),
//        )
//      ],
    ));
  }
}

///搜索控件widget
class TextFileWidget extends StatelessWidget {
  Widget buildTextField() {
    //theme设置局部主题
    return TextField(
      cursorColor: Colors.white, //设置光标
      decoration: InputDecoration(
          //输入框decoration属性
//            contentPadding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 1.0),
          contentPadding: new EdgeInsets.only(left: 0.0),
//            fillColor: Colors.white,
          border: InputBorder.none,
//            icon: Icon(Icons.search),
//            icon: ImageIcon(AssetImage("image/search_meeting_icon.png",),),
          icon: ImageIcon(
            AssetImage(
              "image/search.png",
            ),
          ),
          hintText: "Video name",

          hintStyle: new TextStyle(fontSize: 14, color: Colors.white)),
      style: new TextStyle(fontSize: 14, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget editView() {
      return Container(
        //修饰黑色背景与圆角
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0), //灰色的一层边框
          color: Colors.grey,
          borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
        ),
        alignment: Alignment.center,
        height: 36,
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        child: buildTextField(),
      );
    }

    var cancleView = new Text("cancle");

    return
//      editView();

      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: editView(),
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
          ),
          child: cancleView,
        )
      ],
    );
  }
}