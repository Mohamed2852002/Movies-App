import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/data/models/movie_details_model/movie_details_model.dart';

class MovieNameAndInfoWidget extends StatelessWidget {
  const MovieNameAndInfoWidget({super.key, required this.movieDetailsModel});
  final MovieDetailsModel movieDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        left: 22,
        top: 13,
        bottom: 20,
        right: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieDetailsModel.title ?? 'No Title',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '${movieDetailsModel.releaseDate} ${movieDetailsModel.runtime}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
