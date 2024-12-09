import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/themes/app_colors.dart';

class MovieTags extends StatelessWidget {
  final String label;
  const MovieTags({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: AppColors.containerColor,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Text(
        label,
      ),
    );
  }
}
