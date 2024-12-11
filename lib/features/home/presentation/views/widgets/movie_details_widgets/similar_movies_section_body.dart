import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/similar_movies_list_view.dart';

class SimilarMoviesSectionBody extends StatelessWidget {
  const SimilarMoviesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 27),
          child: Text(
            'More Like This',
            style: Styles.textStyle16,
          ),
        ),
        const SimilarMoviesListView(),
      ],
    );
  }
}
