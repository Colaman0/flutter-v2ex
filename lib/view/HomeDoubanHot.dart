import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Expand.dart';
import 'package:flutterapp/api/Api.dart';
import 'package:flutterapp/entity/douban_hot_entity.dart';

/// 豆瓣热门
class HomeDoubanHot extends StatefulWidget {
  @override
  _HomeDoubanHotState createState() => _HomeDoubanHotState();
}

class _HomeDoubanHotState extends State<HomeDoubanHot>
    with AutomaticKeepAliveClientMixin {
  var isEnd = false;
  var isLoading = true;
  var isLoadmore = false;
  var page = 0;
  List<DoubanHotSubjectCollectionItem> itemEntities = List();

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("高度:${200 / getScreenWidth(context)}");

    return isLoading
        ? getLoading()
        : RefreshIndicator(
            onRefresh: refresh,
            child: GridView.builder(
                itemCount: itemEntities.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    childAspectRatio: (getScreenWidth(context) / 3) / 200),
                itemBuilder: (BuildContext context, int index) {
                  if (index == itemEntities.length - 1 && !isLoadmore) {
                    loadMore();
                  }
                  return DoubanHotWidget(itemEntities[index]);
                }),
          );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  Future<Null> refresh() async {
    await getData();
    return null;
  }

  void loadMore() {
    if (isLoadmore) {
      return;
    }
    isLoadmore = true;
    page++;
    getData();
  }

  getData() {
    Api.getInstance().getDoubanHot(page, 30).then((Response response) {
      var entity = DoubanHotEntity.fromJson(response.data);
      isLoading = false;
      isLoadmore = isEnd = (entity.start + entity.count) >= entity.total;
      if (page == 0) {
        itemEntities.clear();
      }
      itemEntities.addAll(entity.subjectCollectionItems);
      this.setState((){});
    });
  }
}

/// 豆瓣热门item
class DoubanHotWidget extends StatefulWidget {
  final DoubanHotSubjectCollectionItem itemEntity;

  DoubanHotWidget(this.itemEntity);

  @override
  _DoubanHotWidgetState createState() => _DoubanHotWidgetState(itemEntity);
}

class _DoubanHotWidgetState extends State<DoubanHotWidget> {
  final DoubanHotSubjectCollectionItem itemEntity;

  _DoubanHotWidgetState(this.itemEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            // 电影封面以及评分
            Expanded(
              flex: 1,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(left: 8, bottom: 4),
                            width: double.infinity,
                            height: 50,
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Colors.transparent,
                                    Colors.black
                                  ]),
                            ),
                            child: Text(
                              "豆瓣评分:${itemEntity.rating.value}",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.yellowAccent),
                            ),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: NetworkImage(itemEntity.cover.url)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))))
                ],
              ),
            ),
            // 电影名
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                itemEntity.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
