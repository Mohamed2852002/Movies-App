import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/widgets/custom_movie_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movie_information.dart';

class CustomMoviesListItem extends StatelessWidget {
  const CustomMoviesListItem({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMovieImage(
          width: 100,
          height: 125,
          bottomRadius: 0,
          movieModel: movieModel,
        ),
        RecommendedMovieInformation(movieModel: movieModel)
      ],
    );
  }
}
