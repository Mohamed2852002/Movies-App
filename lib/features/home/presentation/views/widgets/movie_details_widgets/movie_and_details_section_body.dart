import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/styles/styles.dart';
import 'movie_and_details_section_body_details.dart';
import 'movie_and_details_section_body_play_movie.dart';

class MovieAndDetailsSectionBody extends StatelessWidget {
  const MovieAndDetailsSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MovieAndDetailsSectionBodyPlayMovie(),
        SizedBox(height: 13.h,),
        Padding(
          padding: REdgeInsets.only(left: 22),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RSizedBox(
              width: 250,
              child: Text(
                'Dora and the lost city of gold',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle16,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h,),
        Padding(
          padding: REdgeInsets.only(left: 22,bottom: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RSizedBox(
              width: 250,
              child: Text(
                '2019 PG-13 2h 7m',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle14
        .copyWith(color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
        ),
        SizedBox(height: 20.h,),
        const MovieAndDetailsSectionBodyDetails()
      ]
    );
  }
}