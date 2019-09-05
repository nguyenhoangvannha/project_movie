import 'package:flutter/material.dart';

import '../../data/respository/entity/movie.dart';
import '../../ui/widget/common/custom_container.dart';
import '../../ui/widget/common/custom_text.dart';

class SearchSuggestionItem extends StatelessWidget {
  final Movie movie;
  final Function onTap;
  final Function onLongPress;

  SearchSuggestionItem({@required this.movie, this.onTap, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Card(
          elevation: 8,
          child: Center(
            child: ListTile(
              contentPadding:
                  EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 4),
              leading: RectangleImage(
                imageUrl: movie.posterPath,
              ),
              title: TextTitle(
                text: movie.title,
              ),
              subtitle: TextSubtitle(
                text: movie.overview,
              ),
              trailing: VoteAverage(movie.voteAverage),
            ),
          ),
        ));
  }
}
