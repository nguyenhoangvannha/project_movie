import 'package:flutter/material.dart';
import 'package:project_movie/data/respository/entity/movie.dart';
import 'package:project_movie/ui/feature/detail/bottom_sheet_movie_details.dart';
import 'package:project_movie/ui/feature/detail/detail_page.dart';
import 'package:project_movie/ui/feature/setting/setting_page.dart';
import 'package:project_movie/ui/feature/setting/theme/theme_page.dart';

void showBottomSheetMovieDetails(BuildContext ctx, int movieId) {
  showModalBottomSheet(
      context: ctx,
      builder: (bCtx) {
        return BottomSheetMovies(
          movieId: movieId,
        );
      });
}

//void showBottomSheetEditMovie(BuildContext ctx, Movie movie) {
//  showModalBottomSheet(
//      context: ctx,
//      builder: (bCtx) {
//        return ChangeNotifierProvider.value(
//            value: movie, child: BottomSheetEditMovie(movie));
//      });
//}

//void showBottomSheetSort(BuildContext ctx, BaseMovies movies) {
//  showModalBottomSheet(
//      context: ctx,
//      builder: (bCtx) {
//        return BottomSheetSort(movies);
//      });
//}

void showDetailsPage(BuildContext context, Movie movie) {
  Navigator.of(context).pop();
  Navigator.of(context).push(MaterialPageRoute(builder: (bCtx) {
    return DetailPage();
  }));
}

void openSetting(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => SettingsPage()));
}

void openThemeSetting(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ThemePage()));
}
