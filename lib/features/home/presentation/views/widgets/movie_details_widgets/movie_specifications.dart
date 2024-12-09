import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/styles/styles.dart';
import 'movie_tags.dart';

class MovieSpecifications extends StatelessWidget {
  const MovieSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 9,
            runSpacing: 3,
            children: [
              MovieTags(label: 'Action',),
              MovieTags(label: 'Drama',),
              MovieTags(label: 'Romance',),
              MovieTags(label: 'comedy',),
            ],
          ),
          const RSizedBox(height: 13),
          Align(
            alignment: Alignment.centerLeft,
            child: RSizedBox(
              width: 250,
              child: Text(
                "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle10,
              ),
            ),
          ),
          const RSizedBox(height: 23),
          Row(
            children: [
              SvgPicture.asset(
                kStarIcon,
                height: 20.h,
                width: 20.w,
              ),
              const RSizedBox(width: 7),
              Text(
                '7.7',
                style: Styles.textStyle10,
              ),
            ],
          )
        ],
      ),
    );
  }
}