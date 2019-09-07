import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:project_movie/data/respository/entity/movie.dart';

import '../star_button.dart';
import 'custom.dart';

class MovieDetailsOverview extends StatelessWidget {
  final Movie _movie;

  MovieDetailsOverview(this._movie);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final contentPadding =
        const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0);
    return Column(
      children: <Widget>[
        _buildActions(context, mediaQuery),
        _buildRating(context, contentPadding),
        _buildMovieDuration(contentPadding),
        _buildOverview(context, contentPadding),
      ],
    );
  }

  _buildActions(BuildContext context, MediaQueryData mediaQuery) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: mediaQuery.orientation == Orientation.portrait
              ? mediaQuery.size.height * 0.4
              : mediaQuery.size.height * 0.6,
          margin: EdgeInsets.only(bottom: 16),
          child: RoundedRectangle(
            child: CustomNetworkImage(imageUrl: _movie.posterPath),
          ),
        ),
        Positioned(
          top: mediaQuery.padding.top,
          width: mediaQuery.size.width,
          child: Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RoundedRectangle(
                  child: Container(
                    color: Colors.black45,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
                RoundedRectangle(
                  child: Container(
                    color: Colors.black45,
                    child: StarButton(
                      movie: _movie,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  _buildMovieDuration(EdgeInsetsGeometry contentPadding) {
    return Container(
      padding: contentPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _buildTimeWidget(
              DateFormat("Hms", "en_US")
                  .format(DateTime(0, 0, 0, 0, _movie.runTime.toInt())),
              'Duration'),
          _buildTimeWidget(_movie.releaseDate, 'Release'),
        ],
      ),
    );
  }

  _buildRating(BuildContext context, EdgeInsetsGeometry contentPadding) {
    return ListTile(
      contentPadding: contentPadding,
      title: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Text(
            _movie.title,
            style: Theme.of(context).textTheme.title,
          )),
      subtitle: Center(
        child: FlutterRatingBarIndicator(
          rating: _movie.voteAverage,
          itemCount: 10,
          itemSize: 25.0,
          emptyColor: Colors.amber.withAlpha(50),
          fillColor: Colors.yellow,
          itemPadding: EdgeInsets.all(2),
        ),
      ),
    );
  }

  _buildOverview(BuildContext context, EdgeInsetsGeometry contentPadding) {
    return ListTile(
      contentPadding: contentPadding,
      title: Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Text(
            'Overview',
            style: Theme.of(context).textTheme.title,
          )),
      subtitle: Text(
        _movie.overview,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  _buildTimeWidget(String title, String subtitle) {
    return Container(
      width: 150,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}