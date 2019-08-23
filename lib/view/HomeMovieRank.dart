import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Expand.dart';
import 'package:flutterapp/api/Api.dart';
import 'package:flutterapp/api/movie_rank_list_entity.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';
import 'package:flutterapp/view/ItemMovieRankWidget.dart';

import 'ItemHotMovieWidget.dart';

class HomeMovieRank extends StatefulWidget {
  @override
  _HomeMovieRankState createState() => _HomeMovieRankState();
}

class _HomeMovieRankState extends State<HomeMovieRank>
    with AutomaticKeepAliveClientMixin {
  var isEnd = false;
  var isLoading = true;
  List<MovieRankListSelectedCollection> rankList = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api.getInstance().getMovieRankList().then((Response response) {
      setState(() {
        var entity = MovieRankListEntity.fromJson(response.data);
        rankList.addAll(entity.selectedCollections);
        isLoading = false;
        isEnd = true;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: isLoading ? getLoading() : getContent());
  }

  Widget getContent() {
    return ListView.builder(
        itemCount: rankList.length + (isEnd ? 0 : 1),
        controller: ScrollController(keepScrollOffset: true),
        itemBuilder: (BuildContext context, int index) {
          if (!isEnd && index == rankList.length) {
            return getEndItem();
          }
          return getItem(rankList[index]);
        });
  }

  Widget getItem(MovieRankListSelectedCollection itemEntity) {
    return RankWidget(itemEntity);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class RankWidget extends StatefulWidget {
  final MovieRankListSelectedCollection itemEntity;

  RankWidget(this.itemEntity);

  @override
  _RankWidgetState createState() => _RankWidgetState(itemEntity);
}

class _RankWidgetState extends State<RankWidget> with AutomaticKeepAliveClientMixin {
  final MovieRankListSelectedCollection itemEntity;

  _RankWidgetState(this.itemEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
           FlatButton(
              onPressed: (){},
              highlightColor: Colors.white30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    itemEntity.name,
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      itemEntity.description,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),

          Container(
            width: double.infinity,
            height: 235,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    indent: 8,
                    color: Colors.transparent,
                  );
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: itemEntity.items.isNotEmpty
                    ? itemEntity.items.length + 2
                    : 0,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0 || index == itemEntity?.items?.length + 1) {
                    return getSpace();
                  }
                  return ItemMovieRankWidget(itemEntity.items[index - 1]);
                }),
          )
        ],
      ),
    );
  }

  Widget getSpace() {
    return SizedBox(width: 6, height: double.infinity);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
