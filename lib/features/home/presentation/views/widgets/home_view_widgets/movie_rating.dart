import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/styles/styles.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key, required this.rating});
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(kStarIcon),
        const RSizedBox(width: 5),
        Text(
          '$rating',
          style: Styles.textStyle10,
        ),
      ],
    );
  }
}
