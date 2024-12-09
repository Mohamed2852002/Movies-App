import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/themes/app_colors.dart';

class WatchlistDetalis extends StatelessWidget {
  final String title;
  final String date;
  final String details;
  const WatchlistDetalis({
    super.key,
    required this.title,
    required this.date,
    required this.details,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 10),
      child: Column(
        children: [
          RSizedBox(
            width: 100.w,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14.copyWith(fontSize: 16.sp),
            ),
          ),
          RSizedBox(
            width: 100.w,
            child: Text(
              date,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.navigationIconColor
              ),
            ),
          ),
          RSizedBox(
            width: 100.w,
            child: Text(
              details,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle14.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.navigationIconColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}