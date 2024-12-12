import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';

class CustomMovieImagePreview extends StatelessWidget {
  const CustomMovieImagePreview({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CachedNetworkImage(
          imageUrl: '$kImagePath$image',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 215.h,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        SvgPicture.asset(kPlayButtonIcon),
      ],
    );
  }
}
