import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var isLoading = false;
  TabController tabController;
  var titles = List<String>();

  _HomePageState() {
    for (int i = 0; i < 10; i++) {
      titles.add("title $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? getLoading() : getContent();
  }

  @override
  initState() {
    tabController = new TabController(length: titles.length, vsync: this);
    super.initState();
  }

  Widget getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.blueGrey,
            unselectedLabelStyle: TextStyle(),
            labelColor: Colors.blue,
            tabs: titles.map((title) => Tab(text: title)).toList(),
          ),
        ),
        Flexible(
          flex: 1,
          child: TabBarView(
            controller: tabController,
            children: titles.map((title) => PageContentWidget(title)).toList(),
          ),
        )
      ],
    );
  }

  List<Widget> getTabs() {
    var tabs = List<Widget>();
    for (var value in titles) {
      if (tabs.length > 3) {
        tabs.add(Text(
          "$value --",
          style: TextStyle(color: Colors.blue),
        ));
      } else {
        tabs.add(Text(
          "$value",
          style: TextStyle(color: Colors.blue),
        ));
      }
    }
    return tabs;
  }

  Widget getLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class PageContentWidget extends StatefulWidget {
  final String title;

  PageContentWidget(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageContentWidgetState(title);
  }
}

class PageContentWidgetState extends State<PageContentWidget>
    with AutomaticKeepAliveClientMixin {
  final String title;

  PageContentWidgetState(this.title);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: ScrollController(keepScrollOffset: true),
        itemExtent: 50,
        itemBuilder: (BuildContext context, int index) {
          return Text(" title $title item $index");
        });
  }

  @override
  bool get wantKeepAlive => true;
}
