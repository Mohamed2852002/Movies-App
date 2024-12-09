import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'movie_and_details_section_body.dart';

class MovieAndDetailsSection extends StatelessWidget {
  const MovieAndDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const RSizedBox(
      width: double.infinity,
      child: MovieAndDetailsSectionBody(),
    );
  }
}
