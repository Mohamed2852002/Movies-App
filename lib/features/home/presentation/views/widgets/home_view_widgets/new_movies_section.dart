import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/new_movies_section_body.dart';

class NewMoviesSection extends StatelessWidget {
  const NewMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      width: double.infinity,
      child: const NewMoviesSectionBody(),
    );
  }
}
