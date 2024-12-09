import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/themes/app_colors.dart';

class MovieTags extends StatelessWidget {
  String label;
  MovieTags({
    super.key,
    required this.label
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.w,
      height: 25.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1.w,color: AppColors.containerColor),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Center(child: Text(label),),
    );
  }
}
