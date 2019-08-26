import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/api/Api.dart';
import 'package:flutterapp/api/DioClient.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';
import 'package:flutterapp/entity/recommond_movie_entity.dart';
import 'package:flutterapp/view/HomeMovieRank.dart';

class ActorInfo {
  final String name;
  final String cover;

  ActorInfo(this.name, this.cover);
}

/// 电影详情页面
class MovieDetailRoute extends StatefulWidget {
  final HotMovieEntitySubjectCollectionItem entity;

  MovieDetailRoute(this.entity);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailState(entity);
  }
}

class DetailState extends State<MovieDetailRoute> {
  List<RecommondMovieEntity> _recommondMovies = List();

  var isLoading = true;
  final HotMovieEntitySubjectCollectionItem entity;

  DetailState(this.entity);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi().whenComplete(() {
      setState(() {});
    });
  }

  Future callApi() async {
    return await Future.wait([
      Api.getInstance()
          .getRecommondMoive((entity.id.toString()))
          .then((value) => {_recommondMovies.addAll(value)}),
      Api.getInstance()
          .getMovieActors((entity.id.toString()))
          .then((value) => {}),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: CustomScrollView(
          physics: ScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              title: Text(entity.title),
            ),
            SliverToBoxAdapter(
              child: getMovieDes(),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Text(
                      "为你推荐",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        itemCount: _recommondMovies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemRecommondWidget(_recommondMovies[index]);
                        }),
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        itemCount: _recommondMovies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemRecommondWidget(_recommondMovies[index]);
                        }),
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        itemCount: _recommondMovies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemRecommondWidget(_recommondMovies[index]);
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  /// 顶部卡片
  Widget getMovieDes() {
    return Card(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 160),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
              child: Image(
                width: 100,
                fit: BoxFit.fitWidth,
                image: NetworkImage(entity.cover.url),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      entity.title,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      entity.info,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Text("${entity.year}.${entity.releaseDate}"),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8),
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Text(
                          entity.rating != null
                              ? "评分:${entity.rating.value}"
                              : "暂无评分",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getRecommond() {
    List<Widget> _widgets = List();
    _recommondMovies.map((entity) => ItemRecommondWidget(entity)).toList();

    return _widgets;
  }
}

class ItemRecommondWidget extends StatefulWidget {
  final RecommondMovieEntity entity;

  ItemRecommondWidget(this.entity);

  @override
  _ItemRecommondWidgetState createState() => _ItemRecommondWidgetState(entity);
}

class _ItemRecommondWidgetState extends State<ItemRecommondWidget> {
  final RecommondMovieEntity entity;

  _ItemRecommondWidgetState(this.entity);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(entity.pic.large)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)))),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: Text(
                  "${entity.title}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: entity.rating != null
                    ? getRatingTextSpan(entity.rating.value)
                    : Text("暂无评分"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text getRatingTextSpan(String value) {
    if (double.parse(value) == 0) {
      return Text(
        "暂无评分",
        style: TextStyle(fontSize: 10),
      );
    }

    return Text.rich(TextSpan(children: [
      TextSpan(text: "评分 : ", style: TextStyle(fontSize: 10)),
      TextSpan(
          text: "$value", style: TextStyle(fontSize: 14, color: Colors.blue)),
    ]));
  }
}
