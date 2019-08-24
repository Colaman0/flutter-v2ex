
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/api/Api.dart';
import 'package:flutterapp/entity/hot_t_v_entity.dart';
import 'package:flutterapp/entity/hot_zongyi_entity.dart';

import '../Expand.dart';

/// 热门综艺
class HomeTV extends StatefulWidget {
  @override
  _HomeTVState createState() => _HomeTVState();
}

class _HomeTVState extends State<HomeTV>
    with AutomaticKeepAliveClientMixin {
  var isEnd = false;
  var isLoading = true;
  var isLoadmore = false;
  var page = 0;
  List<HotTVSubjectCollectionItem> items = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: isLoading ? getLoading() : getContent());
  }

  Widget getContent() {
    return RefreshIndicator(
      onRefresh: refresh,
      child: ListView.separated(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: items.length + 2,
          controller: ScrollController(keepScrollOffset: true),
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 8,
              color: Colors.transparent,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return SizedBox(
                width: double.infinity,
                height: 8,
              );
            }
            if (index - 1 == items.length) {
              if (isEnd) {
                return getNoMoreItem();
              } else {
                if (!isLoadmore) {
                  loadMore();
                }
                return getLoadmoreItem();
              }
            }
            return getItem(items[index - 1]);
          }),
    );
  }

  Future<Null> refresh() async {
    print("refresh");
    page = 0;
    await getData();
    return;
  }

  Widget getItem(HotTVSubjectCollectionItem item) {
    return TVShowItemWidget(item);
  }

  void loadMore() {
    if (isLoadmore == true) {
      return;
    }
    isLoadmore = true;
    page++;
    getData();
  }

  getData() async {
    return Api.getInstance().getTV(page, 30).then((Response response) {
      isLoading = false;
      HotTVEntity entity = HotTVEntity.fromJson(response.data);
      isLoadmore = isEnd = (entity.start + entity.count) >= entity.total;
      if (page == 0) {
        items.clear();
      }
      items.addAll(entity.subjectCollectionItems);
      this.setState(() {});
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

/// 热门综艺item
class TVShowItemWidget extends StatefulWidget {
  HotTVSubjectCollectionItem subjectCollectionItem;

  TVShowItemWidget(this.subjectCollectionItem);

  @override
  _TVShowItemWidgetState createState() =>
      _TVShowItemWidgetState(subjectCollectionItem);
}

class _TVShowItemWidgetState extends State<TVShowItemWidget> {
  HotTVSubjectCollectionItem itemEntity;

  _TVShowItemWidgetState(this.itemEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      height: 132,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        elevation: 10,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(itemEntity.cover.url)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5)))),
            ),
            Container(
              child: Expanded(
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
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
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
      ),
    );
  }
}
