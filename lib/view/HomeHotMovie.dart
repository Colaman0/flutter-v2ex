import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Expand.dart';
import 'package:flutterapp/api/Api.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';

import 'ItemHotMovieWidget.dart';

class HomeHotMoive extends StatefulWidget {
  @override
  _HomeHotMoiveState createState() => _HomeHotMoiveState();
}

class _HomeHotMoiveState extends State<HomeHotMoive>
    with AutomaticKeepAliveClientMixin {
  var isEnd = false;
  var isLoading = true;
  var isLoadmore = false;
  var page = 0;
  var showToTopBtn = false;
  List<HotMovieEntitySubjectCollectionItem> subjectCollectionItems = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 500 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 500 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: isLoading ? getLoading() : getContent());
  }

  var _controller = ScrollController(keepScrollOffset: true);

  Widget getContent() {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refresh,
        child: Scrollbar(
          child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: subjectCollectionItems.length + 1,
              controller: _controller,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 1,
                  color: Colors.grey,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                if (index == subjectCollectionItems.length) {
                  if (isEnd) {
                    return getNoMoreItem();
                  } else {
                    if (!isLoadmore) {
                      loadMore();
                    }
                    return getLoadmoreItem();
                  }
                }
                return getItem(subjectCollectionItems[index]);
              }),
        ),
      ),
      floatingActionButton: showToTopBtn
          ? FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                //返回到顶部时执行动画
                _controller.animateTo(.0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              })
          : null,
    );
  }

  Widget getItem(HotMovieEntitySubjectCollectionItem subjectCollectionItem) {
    return ItemHotMovieWidget(subjectCollectionItem);
  }

  Future<Null> refresh() async {
    page = 0;
    await getData();
    return;
  }

  void loadMore() {
    if (isLoadmore == true) {
      return;
    }
    isLoadmore = true;
    page++;
    getData();
  }

  getData() {
    Api.getInstance()
        .getHotMovies(page, 20)
        .whenComplete(() => {})
        .then((HotMovieEntityEntity entity) {
      isLoading = false;
      isLoadmore = isEnd = (entity.start + entity.count) >= entity.total;
      if (page == 0) {
        subjectCollectionItems.clear();
      }
      subjectCollectionItems.addAll(entity.subjectCollectionItems);
      this.setState(() {});
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
