import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router<String> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("路由页面"),
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              child: Text("新的页面"),
              onPressed: () => {Navigator.pop(context, "返回值===")},
            ),
            DefaultTextStyle(
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              child: Row(
                children: <Widget>[
                  Text("1213123123",style: TextStyle(
                    height: 20,
                    wordSpacing: 20.0
                  ),),
                  Text("2"),
                  Text(
                    "3",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
