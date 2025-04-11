import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/core/utils/widgets/custom_divider.dart';
import 'package:movies_app/features/search/presentation/views/widgets/searched_movie_widget.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kMovieDetailsView, extra: movie);
      },
      child: Column(
        children: [
          SearchedMovieWidget(movie: movie),
          const SizedBox(height: 12),
          const CustomDivider(),
        ],
      ),
    );
  }
}
