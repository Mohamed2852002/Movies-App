import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_widget.dart';

class BrowseCategoryView extends StatelessWidget {
  const BrowseCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 17, top: 50),
          child: Text(
            'Browse Category',
            style: Styles.textStyle22,
          ),
        ),
        const RSizedBox(height: 16),
        Expanded(
          child: GridView.builder(
            padding: REdgeInsets.symmetric(horizontal: 25),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 40.h,
              crossAxisSpacing: 40.w,
              mainAxisExtent: 90.h,
            ),
            itemBuilder: (BuildContext context, int index) {
              return const CategoryWidget();
            },
          ),
        )
      ],
    );
  }
}
