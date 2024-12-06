import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/presentation/views/widgets/recommended_movies_list_view.dart';

class RecommendedMoviesSectionBody extends StatelessWidget {
  const RecommendedMoviesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 27, top: 15),
          child: Text(
            'Recomended',
            style: Styles.textStyle16,
          ),
        ),
        const RSizedBox(height: 13),
        const RecommendedMoviesListView(),
      ],
    );
  }
}
