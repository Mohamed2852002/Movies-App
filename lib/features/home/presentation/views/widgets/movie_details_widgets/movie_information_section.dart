import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/custom_movie_details_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_specifications.dart';

class MovieInformationSection extends StatelessWidget {
  const MovieInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomMovieDetailsImage(),
          MovieSpecifications(),
        ],
      ),
    );
  }
}
