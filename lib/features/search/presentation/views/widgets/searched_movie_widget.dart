import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/widgets/movie_information.dart';

class SearchedMovieWidget extends StatelessWidget {
  const SearchedMovieWidget({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: kImagePath + (movie.posterPath ?? ''),
              width: 140.w,
              height: 89.h,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(width: 16),
          MovieInformationWidget(movie: movie),
        ],
      ),
    );
  }
}
