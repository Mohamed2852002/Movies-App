import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/constants.dart';

class WatchlistImage extends StatelessWidget {
  final String image;
  const WatchlistImage({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Padding(
            padding: REdgeInsets.only(left:10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: CachedNetworkImage(
                imageUrl:
                image,
                width: 140.w,
                height: 89.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 0,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                kBookmarkSelected,
              ),
            ),
          ),
        ]
    );
  }
}
