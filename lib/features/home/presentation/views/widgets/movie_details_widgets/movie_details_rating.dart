import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/styles/styles.dart';

class MovieDetailsRating extends StatelessWidget {
  const MovieDetailsRating({super.key, required this.rating});
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          kStarIcon,
          height: 20.r,
          width: 20.r,
        ),
        const RSizedBox(width: 6),
        Text(
          '$rating',
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
