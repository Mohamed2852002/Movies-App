import 'package:movies_app/core/models/movie_model/movie_model.dart';

class GetMoviesListByCategoryState {}

final class GetMoviesListByCategoryInitial
    extends GetMoviesListByCategoryState {}

final class GetMoviesListByCategoryLoading
    extends GetMoviesListByCategoryState {}

final class GetMoviesListByCategorySuccess
    extends GetMoviesListByCategoryState {
  final List<MovieModel> movies;

  GetMoviesListByCategorySuccess({required this.movies});
}

final class GetMoviesListByCategoryFailure
    extends GetMoviesListByCategoryState {
  final String errorMessage;

  GetMoviesListByCategoryFailure({required this.errorMessage});
}
