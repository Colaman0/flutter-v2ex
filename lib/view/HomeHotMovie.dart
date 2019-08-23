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
  List<HotMovieEntitySubjectCollectionItem> subjectCollectionItems = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api.getInstance()
        .getHotMovies(1, 10)
        .whenComplete(() => {})
        .then((HotMovieEntityEntity entity) => {
              this.setState(() {
                isEnd = false;
                isLoading = false;
                subjectCollectionItems.addAll(entity.subjectCollectionItems);
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: isLoading ? getLoading() : getContent());
  }

  Widget getContent() {
    return CupertinoSliverRefreshControl(
      onRefresh: (){},
      child: ListView.separated(
          physics: AlwaysScrollableScrollPhysics(),

          itemCount: subjectCollectionItems.length + (isEnd ? 0 : 1),
          controller: ScrollController(keepScrollOffset: true),
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 1,
              color: Colors.grey,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            if (!isEnd && index == subjectCollectionItems.length) {
              return getEndItem();
            }
            return getItem(subjectCollectionItems[index]);
          }),
    );
  }

  Widget getItem(HotMovieEntitySubjectCollectionItem subjectCollectionItem) {
    return ItemHotMovieWidget(subjectCollectionItem);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
