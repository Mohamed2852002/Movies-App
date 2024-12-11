import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/functions/convert_to_hours.dart';
import 'package:movies_app/core/utils/functions/extract_the_year.dart';

class MovieNameAndInfoWidget extends StatelessWidget {
  const MovieNameAndInfoWidget({super.key, required this.movieModel});
  final MovieModel movieModel;
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
            movieModel.title ?? 'No Title',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '${extractTheYear(movieModel.releaseDate)} - ${convertToHours(movieModel.runtime)}',
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
