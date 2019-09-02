// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object> serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final double popularity;
  @override
  final int voteCount;
  @override
  final bool video;
  @override
  final String posterPath;
  @override
  final int id;
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final BuiltList<int> genreIds;
  @override
  final String title;
  @override
  final double voteAverage;
  @override
  final String overview;
  @override
  final String releaseDate;

  factory _$Movie([void Function(MovieBuilder) updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.popularity,
      this.voteCount,
      this.video,
      this.posterPath,
      this.id,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.title,
      this.voteAverage,
      this.overview,
      this.releaseDate})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('Movie', 'popularity');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('Movie', 'voteCount');
    }
    if (video == null) {
      throw new BuiltValueNullFieldError('Movie', 'video');
    }
    if (posterPath == null) {
      throw new BuiltValueNullFieldError('Movie', 'posterPath');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (adult == null) {
      throw new BuiltValueNullFieldError('Movie', 'adult');
    }
    if (backdropPath == null) {
      throw new BuiltValueNullFieldError('Movie', 'backdropPath');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError('Movie', 'originalLanguage');
    }
    if (originalTitle == null) {
      throw new BuiltValueNullFieldError('Movie', 'originalTitle');
    }
    if (genreIds == null) {
      throw new BuiltValueNullFieldError('Movie', 'genreIds');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('Movie', 'voteAverage');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('Movie', 'overview');
    }
    if (releaseDate == null) {
      throw new BuiltValueNullFieldError('Movie', 'releaseDate');
    }
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        popularity == other.popularity &&
        voteCount == other.voteCount &&
        video == other.video &&
        posterPath == other.posterPath &&
        id == other.id &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        genreIds == other.genreIds &&
        title == other.title &&
        voteAverage == other.voteAverage &&
        overview == other.overview &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            popularity
                                                                .hashCode),
                                                        voteCount.hashCode),
                                                    video.hashCode),
                                                posterPath.hashCode),
                                            id.hashCode),
                                        adult.hashCode),
                                    backdropPath.hashCode),
                                originalLanguage.hashCode),
                            originalTitle.hashCode),
                        genreIds.hashCode),
                    title.hashCode),
                voteAverage.hashCode),
            overview.hashCode),
        releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('popularity', popularity)
          ..add('voteCount', voteCount)
          ..add('video', video)
          ..add('posterPath', posterPath)
          ..add('id', id)
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('genreIds', genreIds)
          ..add('title', title)
          ..add('voteAverage', voteAverage)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  double _popularity;

  double get popularity => _$this._popularity;

  set popularity(double popularity) => _$this._popularity = popularity;

  int _voteCount;

  int get voteCount => _$this._voteCount;

  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  bool _video;

  bool get video => _$this._video;

  set video(bool video) => _$this._video = video;

  String _posterPath;

  String get posterPath => _$this._posterPath;

  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  bool _adult;

  bool get adult => _$this._adult;

  set adult(bool adult) => _$this._adult = adult;

  String _backdropPath;

  String get backdropPath => _$this._backdropPath;

  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  String _originalLanguage;

  String get originalLanguage => _$this._originalLanguage;

  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;

  String get originalTitle => _$this._originalTitle;

  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  ListBuilder<int> _genreIds;

  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();

  set genreIds(ListBuilder<int> genreIds) => _$this._genreIds = genreIds;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  double _voteAverage;

  double get voteAverage => _$this._voteAverage;

  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _overview;

  String get overview => _$this._overview;

  set overview(String overview) => _$this._overview = overview;

  String _releaseDate;

  String get releaseDate => _$this._releaseDate;

  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _voteCount = _$v.voteCount;
      _video = _$v.video;
      _posterPath = _$v.posterPath;
      _id = _$v.id;
      _adult = _$v.adult;
      _backdropPath = _$v.backdropPath;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _genreIds = _$v.genreIds?.toBuilder();
      _title = _$v.title;
      _voteAverage = _$v.voteAverage;
      _overview = _$v.overview;
      _releaseDate = _$v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
              popularity: popularity,
              voteCount: voteCount,
              video: video,
              posterPath: posterPath,
              id: id,
              adult: adult,
              backdropPath: backdropPath,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              genreIds: genreIds.build(),
              title: title,
              voteAverage: voteAverage,
              overview: overview,
              releaseDate: releaseDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
