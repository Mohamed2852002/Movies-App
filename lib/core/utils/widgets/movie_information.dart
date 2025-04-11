import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/functions/extract_the_year.dart';

class MovieInformationWidget extends StatelessWidget {
  const MovieInformationWidget({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.title ?? 'No Title',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16,
          ),
          const SizedBox(height: 6),
          Text(
            extractTheYear(movie.releaseDate),
            style: Styles.textStyle14
                .copyWith(color: Colors.white.withValues(alpha: 0.67)),
          ),
          const SizedBox(height: 6),
          Text(
            movie.overview ?? 'Unknown',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14
                .copyWith(color: Colors.white.withValues(alpha: 0.67)),
          ),
        ],
      ),
    );
  }
}
