import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as prefix0;
import 'package:flutterapp/api/DioClient.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';
import 'package:flutterapp/entity/recommond_movie_entity.dart';

class Api {
  static Api _api;

  Api._();

  static Api getInstance() {
    if (_api == null) {
      _api = Api._();
    }
    return _api;
  }

  /// 影院热映
  Future<HotMovieEntityEntity> getHotMovies(int page, int count) async {
    Response response = await DioClient.getInstance().get(
        "subject_collection/movie_showing/items",
        queryParameters: {"start": page * count, "count": count});
    return new HotMovieEntityEntity.fromJson(response.data);
  }

  /// 电影榜单
  Future<Response> getMovieRankList() async {
    return DioClient.getInstance().get("movie/rank_list");
  }

  /// 豆瓣热门
  Future<Response> getDoubanHot(int page, int count) async {
    return DioClient.getInstance().get(
        "subject_collection/movie_hot_gaia/items",
        queryParameters: {"start": page * count, "count": count});
  }

  /// 热门综艺
  Future<Response> getTVShow(int page, int count) async {
    return DioClient.getInstance().get(
        "subject_collection/tv_variety_show/items",
        queryParameters: {"start": page * count, "count": count});
  }

  /// 热门综艺
  Future<Response> getTV(int page, int count) async {
    return DioClient.getInstance().get("subject_collection/tv_hot/items",
        queryParameters: {"start": page * count, "count": count});
  }

  /// 电影演员列表
  Future<Response> getMovieActors(String id) async {
    return DioClient.getInstance().get("movie/$id");
  }

  /// 推荐电影
  Future<List<RecommondMovieEntity>> getRecommondMoive(String id) async {
    var data = await DioClient.getInstance().get("movie/$id/recommendations");

    return (data.data as List)
        .map((entity) => RecommondMovieEntity.fromJson(entity))
        .toList();
  }
}
