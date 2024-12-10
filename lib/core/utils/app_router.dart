import 'package:go_router/go_router.dart';
import 'package:movies_app/core/models/movie_model.dart';
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
        builder: (context, state) =>
            MovieDetailsView(movieModel: state.extra as MovieModel),
      ),
    ],
  );
}
