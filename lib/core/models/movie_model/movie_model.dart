import 'package:movies_app/core/models/movie_entity.dart';
import 'package:movies_app/core/models/movie_model/genre.dart';
import 'package:movies_app/core/models/movie_model/production_company.dart';
import 'package:movies_app/core/models/movie_model/production_country.dart';
import 'package:movies_app/core/models/movie_model/spoken_language.dart';

class MovieModel extends MovieEntity {
  bool? adult;
  String? backdropPath;
  List<dynamic>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  int? voteCount;
  dynamic belongsToCollection;
  int? budget;
  List<Genre>? genres;
  String? homepage;
  String? imdbId;
  List<dynamic>? originCountry;
  List<ProductionCompany>? productionCompanies;
  List<ProductionCountry>? productionCountries;
  int? revenue;
  int? runtime;
  List<SpokenLanguage>? spokenLanguages;
  String? status;
  String? tagline;

  MovieModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.imdbId,
    this.originCountry,
    this.productionCompanies,
    this.productionCountries,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
  }) : super(
          movieId: id,
          movieTitle: title,
          moviePosterPath: posterPath,
          movieGenres: [],
          movieReleaseDate: releaseDate,
          movieVoteAverage: voteAverage,
          movieOverview: overview,
          movieRuntime: 0,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        genreIds: json['genre_ids'] as List<dynamic>?,
        id: json['id'] as int?,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        popularity: json['popularity'] as num?,
        posterPath: json['poster_path'] as String?,
        releaseDate: json['release_date'] as String?,
        title: json['title'] as String?,
        video: json['video'] as bool?,
        voteAverage: json['vote_average'] as num?,
        voteCount: json['vote_count'] as int?,
        belongsToCollection: json['belongs_to_collection'] as dynamic,
        budget: json['budget'] as int?,
        genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
            .toList(),
        homepage: json['homepage'] as String?,
        imdbId: json['imdb_id'] as String?,
        originCountry: json['origin_country'] as List<dynamic>?,
        productionCompanies: (json['production_companies'] as List<dynamic>?)
            ?.map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
            .toList(),
        productionCountries: (json['production_countries'] as List<dynamic>?)
            ?.map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
            .toList(),
        revenue: json['revenue'] as int?,
        runtime: json['runtime'] as int?,
        spokenLanguages: (json['spoken_languages'] as List<dynamic>?)
            ?.map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
            .toList(),
        status: json['status'] as String?,
        tagline: json['tagline'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'genre_ids': genreIds,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
        'belongs_to_collection': belongsToCollection,
        'budget': budget,
        'genres': genres?.map((e) => e.toJson()).toList(),
        'homepage': homepage,
        'imdb_id': imdbId,
        'origin_country': originCountry,
        'production_companies':
            productionCompanies?.map((e) => e.toJson()).toList(),
        'production_countries':
            productionCountries?.map((e) => e.toJson()).toList(),
        'revenue': revenue,
        'runtime': runtime,
        'spoken_languages': spokenLanguages?.map((e) => e.toJson()).toList(),
        'status': status,
        'tagline': tagline,
      };
}
