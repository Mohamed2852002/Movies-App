import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/constants/constants.dart';

class DetailsImage extends StatefulWidget {
  const DetailsImage({super.key});

  @override
  State<DetailsImage> createState() => _DetailsImageState();
}

class _DetailsImageState extends State<DetailsImage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
            'https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:16x9/messi-1805.jpg',
            width: 130.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: () {
              isSelected = !isSelected;
              setState(() {});
            },
            child: SvgPicture.asset(
              isSelected ? kBookmarkSelected :kBookmark,
            ),
          ),
        ]
    );
  }
}