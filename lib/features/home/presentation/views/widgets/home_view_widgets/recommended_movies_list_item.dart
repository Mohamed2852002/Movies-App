import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/widgets/custom_movie_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movie_information.dart';

class RecommendedMoviesListItem extends StatelessWidget {
  const RecommendedMoviesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomMovieImage(width: 100, height: 125, bottomRadius: 0),
        RecommendedMovieInformation()
      ],
    );
  }
}
