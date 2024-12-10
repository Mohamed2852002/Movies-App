import 'package:movies_app/core/models/movie_model.dart';

class GetTopRatedMoviesState {}

final class GetTopRatedMoviesInitial extends GetTopRatedMoviesState {}

final class GetTopRatedMoviesLoading extends GetTopRatedMoviesState {}

final class GetTopRatedMoviesSuccess extends GetTopRatedMoviesState {
  final List<MovieModel> movies;

  GetTopRatedMoviesSuccess({required this.movies});
}

final class GetTopRatedMoviesFailure extends GetTopRatedMoviesState {
  final String errorMessage;

  GetTopRatedMoviesFailure({required this.errorMessage});
}
