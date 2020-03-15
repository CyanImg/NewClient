import 'package:flutter/material.dart';
import '../../model/publish.dart';

class LayoutDemo extends StatelessWidget {  
  final PublishListModel list;
  LayoutDemo(this.list);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:10,bottom: 10, left: 7.5),
      child: _build(context, deviceWidth),
    );
  }
@override
Widget _build(BuildContext context,double deviceWidth) {   
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth =deviceWidth * 110.0 / 360;

    List<Widget> listWidgets = list.data.map((i){
      return Container(
        width: itemWidth,
        margin: EdgeInsets.only(bottom: 5, left:2),
        padding: EdgeInsets.only(top:10, left: 13, bottom:7),
        color:  Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              i.username,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.black),
            ),
            Text(
              i.graphername,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.black),
            ),
            Text(
              i.grapherschool,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.black),
            ),
            Container(
              alignment: Alignment(0, 0),
              margin: EdgeInsets.only(top:5),
              child: Image.asset(
              i.imageUrl,
              width: imageWidth,
              height: imageWidth,
            ),
            ),
          ],
        ),
      );

    }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding:  EdgeInsets.only(left:5, bottom:10),
          child: Text('最新动态',style: TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),
          ),
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
      );
  }
}


