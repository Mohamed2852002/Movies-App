import 'package:movies_app/core/models/movie_model/movie_model.dart';

sealed class GetSearchedMoviesState {}

final class GetSearchedMoviesInitial extends GetSearchedMoviesState {}

final class GetSearchedMoviesLoading extends GetSearchedMoviesState {}

final class GetSearchedMoviesSuccess extends GetSearchedMoviesState {
  final List<MovieModel> searchedMovies;

  GetSearchedMoviesSuccess({required this.searchedMovies});
}

final class GetSearchedMoviesFailure extends GetSearchedMoviesState {
  final String errorMessage;

  GetSearchedMoviesFailure({required this.errorMessage});
}
