import 'package:movies_app/core/models/movie_model.dart';

class GetSimilarMoviesState {}

final class GetSimilarMoviesInitial extends GetSimilarMoviesState {}

final class GetSimilarMoviesLoading extends GetSimilarMoviesState {}

final class GetSimilarMoviesSuccess extends GetSimilarMoviesState {
  final List<MovieModel> movies;

  GetSimilarMoviesSuccess({required this.movies});
}

final class GetSimilarMoviesFailure extends GetSimilarMoviesState {
  final String errorMessage;

  GetSimilarMoviesFailure({required this.errorMessage});
}
