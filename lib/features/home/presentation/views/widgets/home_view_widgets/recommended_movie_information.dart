import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/functions/extract_the_year.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/movie_rating.dart';

class RecommendedMovieInformation extends StatelessWidget {
  const RecommendedMovieInformation({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.r),
            bottomRight: Radius.circular(5.r),
          ),
        ),
        width: 100.w,
        child: Padding(
          padding: REdgeInsets.only(left: 8, top: 6, bottom: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MovieRating(rating: movieModel.voteAverage ?? 0),
              const RSizedBox(height: 3),
              Text(
                movieModel.title ?? 'No Title',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle10,
              ),
              const RSizedBox(height: 3),
              Text(
                '${extractTheYear(movieModel.releaseDate ?? '2023-11-21')}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle10
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
