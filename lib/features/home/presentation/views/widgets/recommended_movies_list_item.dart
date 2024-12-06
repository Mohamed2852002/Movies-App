import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/presentation/views/widgets/custom_movie_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rating.dart';

class RecommendedMoviesListItem extends StatelessWidget {
  const RecommendedMoviesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomMovieImage(width: 100, height: 125, bottomRadius: 0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.r),
              bottomRight: Radius.circular(5.r),
            ),
          ),
          width: 100.w,
          height: 61.h,
          child: Padding(
            padding: REdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MovieRating(),
                RSizedBox(
                  width: 80,
                  child: Text(
                    'Deadpool 2',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle10,
                  ),
                ),
                Text(
                  '2018  R  1h 59m',
                  style: Styles.textStyle10
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
