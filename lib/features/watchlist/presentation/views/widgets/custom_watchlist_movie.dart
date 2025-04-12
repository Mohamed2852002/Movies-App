import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/widgets/custom_movie_image.dart';
import 'package:movies_app/core/utils/widgets/movie_information.dart';

class CustomWatchlistMovie extends StatelessWidget {
  const CustomWatchlistMovie({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          CustomMovieImage(
            width: 140,
            height: 89,
            movieModel: movie,
          ),
          const RSizedBox(width: 16),
          MovieInformationWidget(movie: movie),
        ],
      ),
    );
  }
}
