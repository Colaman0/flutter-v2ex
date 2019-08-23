import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/view/Home.dart';

void main() {
  runApp(new MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}

class MyApp extends StatelessWidget {
  var currentPage = 0;
  var _redbox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter', home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  var currentPage = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("热点"), icon: Icon(Icons.hot_tub)),
          BottomNavigationBarItem(title: Text("我的"), icon: Icon(Icons.people))
        ],
        onTap: onPageSwitch,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChange,
        children: <Widget>[
          HomePage(),
          Text("热点"),
          Text("我的"),
        ],
      ),
    ));
  }

  void onPageSwitch(int index) {
    setState(() {
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 200),
          curve: Cubic(0.20, 0.00, 0.00, 1.00));
      currentPage = index;
    });
  }

  void onPageChange(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
