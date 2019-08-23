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

/// 位于中间的loading
Widget getLoading() {
  return Center(
    child: SizedBox(
      child: CircularProgressIndicator(),
    ),
  );
}