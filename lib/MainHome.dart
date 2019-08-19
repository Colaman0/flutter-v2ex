import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainHomeState();
  }
}

class MainHomeState extends State<MainHome> {
  var isLoading = false;
  var btnIndex = 0;

  @override
  Widget build(BuildContext context) {
    return isLoading ? getLoading() : getContent();
  }

  Widget getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
          child: getTitle(),
        ),
        Flexible(
          flex: 1,
          child: ListView.builder(
              itemCount: 10000,
              itemExtent: 60,
              itemBuilder: (BuildContext context, int index) {
                return Text("第$btnIndex个标题 第$index个item");
              }),
        )
      ],
    );
  }

  Widget getLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget getTitle() {
    List<Widget> titles = List();
    for (int i = 0; i < 10; i++) {
      titles.add(Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(8),
          child: FlatButton(
            color: i == btnIndex ? Colors.blue : Colors.red,
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("title $i"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              setState(() {
                btnIndex = i;
              });
            },
          )));
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: titles,
    );
  }
}
