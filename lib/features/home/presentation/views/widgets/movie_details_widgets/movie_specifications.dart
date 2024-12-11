import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/data/models/movie_details_model/movie_details_model.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/custom_wrap_widget.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_details_rating.dart';
import '../../../../../../core/styles/styles.dart';

class MovieSpecifications extends StatelessWidget {
  const MovieSpecifications({super.key, required this.movieDetailsModel});
  final MovieDetailsModel movieDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: REdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomWrapWidget(
              tags: movieDetailsModel.genres
                      ?.map((genre) => genre.name ?? '')
                      .toList() ??
                  [''],
            ),
            const RSizedBox(height: 14),
            Text(
              movieDetailsModel.overview ?? 'No Overview',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14,
            ),
            const RSizedBox(height: 16),
            MovieDetailsRating(rating: movieDetailsModel.voteAverage ?? 0),
          ],
        ),
      ),
    );
  }
}
