import 'package:movies_app/core/models/movie_model.dart';

class GetPopularMoviesState {}

final class GetPopularMoviesInitial extends GetPopularMoviesState {}

final class GetPopularMoviesLoading extends GetPopularMoviesState {}

final class GetPopularMoviesSuccess extends GetPopularMoviesState {
  final List<MovieModel> movies;

  GetPopularMoviesSuccess({required this.movies});
}

final class GetPopularMoviesFailure extends GetPopularMoviesState {
  final String errorMessage;

  GetPopularMoviesFailure({required this.errorMessage});
}
