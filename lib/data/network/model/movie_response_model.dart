import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:project_movie/data/network/model/movie_model.dart';
import 'package:project_movie/data/network/model/serializers.dart';

part 'movie_response_model.g.dart';

abstract class MovieResponseModel
    implements Built<MovieResponseModel, MovieResponseModelBuilder> {
  MovieResponseModel._();

  factory MovieResponseModel(
      [updates(MovieResponseModelBuilder b)]) = _$MovieResponseModel;

  @BuiltValueField(wireName: 'page')
  int get page;

  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: 'results')
  BuiltList<MovieModel> get movies;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieResponseModel.serializer, this));
  }

  static MovieResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<MovieResponseModel> get serializer =>
      _$movieResponseModelSerializer;
}
