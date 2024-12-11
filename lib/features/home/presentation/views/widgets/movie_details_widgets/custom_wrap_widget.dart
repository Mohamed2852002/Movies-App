import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_tags.dart';

class CustomWrapWidget extends StatelessWidget {
  const CustomWrapWidget({super.key, required this.tags});
  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.w,
      runSpacing: 3.h,
      children: tags
          .map(
            (tag) => MovieTags(label: tag),
          )
          .toList(),
    );
  }
}
