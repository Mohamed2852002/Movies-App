import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movies_list_view.dart';

class RecommendedMoviesSectionBody extends StatelessWidget {
  const RecommendedMoviesSectionBody({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 27),
          child: Text(
            text,
            style: Styles.textStyle16,
          ),
        ),
        const RecommendedMoviesListView(),
      ],
    );
  }
}
