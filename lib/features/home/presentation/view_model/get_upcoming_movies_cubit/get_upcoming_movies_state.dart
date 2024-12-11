import 'package:movies_app/core/models/movie_model/movie_model.dart';

class GetUpcomingMoviesState {}

final class GetUpcomingMoviesInitial extends GetUpcomingMoviesState {}

final class GetUpcomingMoviesLoading extends GetUpcomingMoviesState {}

final class GetUpcomingMoviesSuccess extends GetUpcomingMoviesState {
  final List<MovieModel> movies;

  GetUpcomingMoviesSuccess({required this.movies});
}

final class GetUpcomingMoviesFailure extends GetUpcomingMoviesState {
  final String errorMessage;

  GetUpcomingMoviesFailure({required this.errorMessage});
}
