import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/new_movies_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/popular_movies_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/recommended_movies_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PopularMoviesSection(),
          RSizedBox(height: 25),
          NewMoviesSection(),
          RSizedBox(height: 30),
          RecommendedMoviesSection(),
        ],
      ),
    );
  }
}
