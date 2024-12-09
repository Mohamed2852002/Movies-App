import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/custom_divider.dart';
import 'package:movies_app/features/search/presentation/views/widgets/searched_movie_widget.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchedMovieWidget(),
        RSizedBox(height: 14),
        CustomDivider(),
      ],
    );
  }
}
