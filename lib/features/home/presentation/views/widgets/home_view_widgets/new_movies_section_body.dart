import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/new_movies_list_view.dart';

class NewMoviesSectionBody extends StatelessWidget {
  const NewMoviesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 27),
          child: Text(
            'New Releases',
            style: Styles.textStyle16,
          ),
        ),
        const RSizedBox(height: 13),
        const NewMoviesListView(),
      ],
    );
  }
}
