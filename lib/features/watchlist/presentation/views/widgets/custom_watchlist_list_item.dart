import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/widgets/custom_divider.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/custom_watchlist_movie.dart';

class CustomWatchlistListItem extends StatelessWidget {
  const CustomWatchlistListItem({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomWatchlistMovie(movie: movie),
        const SizedBox(height: 12),
        const CustomDivider(),
      ],
    );
  }
}
