import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/api/DioClient.dart';
import 'package:flutterapp/api/movie_rank_list_entity.dart';
import 'package:flutterapp/entity/hot_movie_entity_entity.dart';

class Api {
  static Api _api;

  Api._();

  static Api getInstance() {
    if (_api == null) {
      _api = Api._();
    }
    return _api;
  }

  // ignore: missing_return
  Future<HotMovieEntityEntity> getHotMovies(int page, int count) async {
    Response response = await DioClient.getInstance().get(
        "subject_collection/movie_showing/items",
        queryParameters: {"start": page * count, "count": count});
    return new HotMovieEntityEntity.fromJson(response.data);
  }

  Future<Response> getMovieRankList() async{
    return DioClient.getInstance().get("movie/rank_list");
  }
}
