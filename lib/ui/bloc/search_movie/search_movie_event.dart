import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SearchMovieEvent extends Equatable {
  SearchMovieEvent() : super();

  @override
  List<Object> get props => [];
}

class Search extends SearchMovieEvent {
  final String query;
  final int page;

  Search(this.query, {this.page = 1});
}

//class LoadMore extends SearchMovieEvent {
//  final String query;
//  final int page;
//
//  LoadMore(this.query, {@required this.page});
//}
