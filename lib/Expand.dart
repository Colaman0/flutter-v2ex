import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 拓展一些常用的widget

Widget getEndItem() {
  return SizedBox(
    height: 36,
    child: FlatButton(
      child: Text("查看全部"),
      onPressed: () {},
    ),
  );
}



Widget getNoMoreItem() {
  return SizedBox(
    height: 36,
    child: FlatButton(
      child: Text("没有更多"),
      onPressed: () {},
    ),
  );
}

Widget getLoadmoreItem() {
  return Container(
    margin: EdgeInsets.only(top: 8, bottom: 8),
    alignment: Alignment.center,
    child: SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(),
    ),
  );
}

/// 位于中间的loading
Widget getLoading() {
  return Center(
    child: SizedBox(
      child: CircularProgressIndicator(),
    ),
  );
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
