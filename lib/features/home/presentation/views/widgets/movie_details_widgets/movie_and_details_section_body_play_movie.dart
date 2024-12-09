import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/constants/constants.dart';

class MovieAndDetailsSectionBodyPlayMovie extends StatelessWidget {
  const MovieAndDetailsSectionBodyPlayMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CachedNetworkImage(
          imageUrl:
          'https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:16x9/messi-1805.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 220.h,
        ),
        SvgPicture.asset(kPlayButtonIcon),
      ],
    );
  }
}
