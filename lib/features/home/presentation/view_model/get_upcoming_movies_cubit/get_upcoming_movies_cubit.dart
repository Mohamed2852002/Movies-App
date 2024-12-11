import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';
import 'package:movies_app/features/home/presentation/view_model/get_upcoming_movies_cubit/get_upcoming_movies_state.dart';

class GetUpcomingMoviesCubit extends Cubit<GetUpcomingMoviesState> {
  GetUpcomingMoviesCubit(this.homeRepo) : super(GetUpcomingMoviesInitial());
  final HomeRepo homeRepo;
  getUpcomingMovies() async {
    emit(GetUpcomingMoviesLoading());
    var data = await homeRepo.getUpcomingMovies();
    data.fold(
      (failure) {
        emit(GetUpcomingMoviesFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(GetUpcomingMoviesSuccess(movies: movies));
      },
    );
  }
}
