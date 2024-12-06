import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class NewMoviesListView extends StatelessWidget {
  const NewMoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 127,
      child: ListView.separated(
        padding: REdgeInsets.only(left: 27),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const CustomMovieImage(width: 95, height: 127),
        separatorBuilder: (context, index) => const RSizedBox(width: 14),
        itemCount: 10,
      ),
    );
  }
}
