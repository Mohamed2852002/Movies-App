import 'package:flutter/material.dart';
import 'package:movies_app/core/themes/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(
        color: AppColors.containerColor,
        height: 0,
        thickness: 2,
      ),
    );
  }
}
