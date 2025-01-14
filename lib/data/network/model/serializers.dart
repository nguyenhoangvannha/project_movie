import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:project_movie_flutter/data/network/model/cast_model.dart';
import 'package:project_movie_flutter/data/network/model/credits_response_model.dart';
import 'package:project_movie_flutter/data/network/model/movie_model.dart';
import 'package:project_movie_flutter/data/network/model/movie_response_model.dart';
import 'package:project_movie_flutter/data/network/model/video_model.dart';
import 'package:project_movie_flutter/data/network/model/video_response_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  MovieModel,
  MovieResponseModel,
  CastModel,
  CreditsResponseModel,
  VideoModel,
  VideoResponseModel
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
