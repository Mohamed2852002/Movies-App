class MovieEntity {
  int? movieId;
  String? movieTitle;
  String? moviePosterPath;
  List<String>? movieGenres;
  String? movieReleaseDate;
  num? movieVoteAverage;
  String? movieOverview;
  int? movieRuntime;

  MovieEntity({
    required this.movieId,
    required this.movieTitle,
    required this.moviePosterPath,
    required this.movieGenres,
    required this.movieReleaseDate,
    required this.movieVoteAverage,
    required this.movieOverview,
    required this.movieRuntime,
  });
}
