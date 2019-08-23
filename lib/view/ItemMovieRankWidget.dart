import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/api/movie_rank_list_entity.dart';

/// 电影绑定页面 item，一个item对应一个榜单
class ItemMovieRankWidget extends StatefulWidget {
  MovieRankListSelectedCollectionsItem item;

  ItemMovieRankWidget(this.item);

  @override
  _ItemMovieRankWidgetState createState() => _ItemMovieRankWidgetState(item);
}

class _ItemMovieRankWidgetState extends State<ItemMovieRankWidget> {
  MovieRankListSelectedCollectionsItem item;

  _ItemMovieRankWidgetState(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(top: 16, bottom: 16),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        elevation: 10,
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: double.infinity,
                    height: 145,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(item.pic.large)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)))),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: Text(
                  "${item.title}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: item.rating != null
                    ? getRatingTextSpan(item.rating.value)
                    : Text("暂无评分"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text getRatingTextSpan(double value) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "评分 : ", style: TextStyle(fontSize: 10)),
      TextSpan(
          text: "$value", style: TextStyle(fontSize: 14, color: Colors.blue)),
    ]));
  }
}
