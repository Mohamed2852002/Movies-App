import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'details_image.dart';
import 'movie_specifications.dart';

class MovieAndDetailsSectionBodyDetails extends StatelessWidget {

  const MovieAndDetailsSectionBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 22),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsImage(),
          Expanded(
            child: MovieSpecifications(),
          ),
        ],
      ),
    );
  }
}