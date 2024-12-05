import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/themes/app_colors.dart';

class CustomNavigationDestination extends StatelessWidget {
  const CustomNavigationDestination({
    super.key,
    required this.selectedIndex,
    required this.destinationNumber,
    required this.destinationLabel,
    required this.destinationIcon,
  });
  final int selectedIndex;
  final int destinationNumber;
  final String destinationLabel;
  final String destinationIcon;
  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: SvgPicture.asset(
        destinationIcon,
        colorFilter: ColorFilter.mode(
          selectedIndex == destinationNumber
              ? AppColors.secondaryColor
              : AppColors.navigationIconColor,
          BlendMode.srcIn,
        ),
      ),
      label: destinationLabel,
    );
  }
}
