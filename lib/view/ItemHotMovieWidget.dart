import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';

/// 影院热映item
class ItemHotMovieWidget extends StatefulWidget {
  final HotMovieEntitySubjectCollectionItem itemEntity;

  ItemHotMovieWidget(this.itemEntity);

  @override
  _ItemHotMovieWidgetState createState() =>
      _ItemHotMovieWidgetState(this.itemEntity);
}

class _ItemHotMovieWidgetState extends State<ItemHotMovieWidget> {
  final HotMovieEntitySubjectCollectionItem itemEntity;

  _ItemHotMovieWidgetState(this.itemEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      height: 132,
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 8),
            child: Image(
              width: 80,
              height: 100,
              image: NetworkImage(itemEntity.cover.url),
            ),
          ),
          Container(
            child: Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemEntity.title,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      itemEntity.info,
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: <Widget>[
                      Text("${itemEntity.year}.${itemEntity.releaseDate}"),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                        ),
                        child: Text(
                          itemEntity.rating != null
                              ? "评分:${itemEntity.rating.value}"
                              : "暂无评分",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
