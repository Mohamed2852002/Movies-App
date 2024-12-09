import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_details_rating.dart';
import '../../../../../../core/styles/styles.dart';
import 'movie_tags.dart';

class MovieSpecifications extends StatelessWidget {
  const MovieSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: REdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 9.w,
              runSpacing: 3.h,
              children: const [
                MovieTags(label: 'Action'),
                MovieTags(label: 'Drama'),
                MovieTags(label: 'Romance'),
                MovieTags(label: 'comedy'),
              ],
            ),
            const RSizedBox(height: 14),
            Text(
              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14,
            ),
            const RSizedBox(height: 16),
            const MovieDetailsRating(),
          ],
        ),
      ),
    );
  }
}
