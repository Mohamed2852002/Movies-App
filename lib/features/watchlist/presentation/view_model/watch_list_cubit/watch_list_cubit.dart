import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_state.dart';

class WatchListCubit extends Cubit<WatchListState> {
  WatchListCubit() : super(WatchListInitial());

  void addMovieToWatchList({required MovieModel movie, required int movieId}) {
    emit(WatchListLoading());
    var box = Hive.box<MovieModel>(kSavedMoviesBox);
    box.put(movieId, movie);
    emit(WatchListLoaded());
  }

  void removeMovieFromWatchList({required int movieId}) {
    emit(WatchListLoading());
    var box = Hive.box<MovieModel>(kSavedMoviesBox);
    box.delete(movieId);
    emit(WatchListLoaded());
  }

  var watchListBox = Hive.box<MovieModel>(kSavedMoviesBox);
}
