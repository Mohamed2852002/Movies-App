import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';

class NoMoviesImageWidget extends StatelessWidget {
  const NoMoviesImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SvgPicture.asset(kNoMoviesImage),
      ),
    );
  }
}
