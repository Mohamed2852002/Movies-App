import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/search/data/repos/search_repo.dart';
import 'package:movies_app/features/search/presentation/view_model/get_searched_movies_cubit/get_searched_movies_state.dart';

class GetSearchedMoviesCubit extends Cubit<GetSearchedMoviesState> {
  GetSearchedMoviesCubit(this.searchRepo) : super(GetSearchedMoviesInitial());
  final SearchRepo searchRepo;

  Future<void> getSearchedMovies({required String query}) async {
    emit(GetSearchedMoviesLoading());
    final result = await searchRepo.getSearchedMovies(query: query);
    result.fold(
      (failure) => emit(GetSearchedMoviesFailure(errorMessage: failure.errorMessage)),
      (movies) => emit(GetSearchedMoviesSuccess(searchedMovies: movies)),
    );
  }
}
