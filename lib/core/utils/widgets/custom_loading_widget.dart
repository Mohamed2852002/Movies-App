import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.flickr(
        leftDotColor: Theme.of(context).colorScheme.secondary,
        rightDotColor: Colors.white,
        size: 26.sp,
      ),
    );
  }
}
