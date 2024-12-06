import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/recommended_movies_list_item.dart';

class RecommendedMoviesListView extends StatelessWidget {
  const RecommendedMoviesListView({super.key});

  get separatorBuilder => null;

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 186,
      child: ListView.separated(
          padding: REdgeInsets.only(left: 24),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const RecommendedMoviesListItem(),
          separatorBuilder: (context, index) => const RSizedBox(width: 14),
          itemCount: 10),
    );
  }
}
