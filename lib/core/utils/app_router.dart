import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo_impl.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_similar_movies_cubit/get_similar_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/movie_details_view.dart';
import 'package:movies_app/features/home/presentation/views/navigation_view.dart';

abstract class AppRouter {
  static const String kMovieDetailsView = '/details';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const NavigationView(),
      ),
      GoRoute(
        path: kMovieDetailsView,
        builder: (context, state) {
          final MovieModel movieModel = state.extra as MovieModel;
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => GetMovieDetailsCubit(
                  getIt.get<MovieDetailsRepoImpl>(),
                )..getMovieDetails(
                    movieId: movieModel.id ?? 0,
                  ),
              ),
              BlocProvider(
                create: (context) => GetSimilarMoviesCubit(
                  getIt.get<MovieDetailsRepoImpl>(),
                )..getSimilarMovies(
                    movieId: movieModel.id ?? 0,
                  ),
              ),
            ],
            child: MovieDetailsView(movieModel: movieModel),
          );
        },
      ),
    ],
  );
}
