import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';

class MovieInformationWidget extends StatelessWidget {
  const MovieInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Harry Potter Pack",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16,
          ),
          const RSizedBox(height: 5),
          Text(
            "2001",
            style: Styles.textStyle14
                .copyWith(color: Colors.white.withOpacity(0.67)),
          ),
          const RSizedBox(height: 5),
          Text(
            "Rosa Salazar, Christoph Waltz sfw sfaw sf",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle14
                .copyWith(color: Colors.white.withOpacity(0.67)),
          ),
        ],
      ),
    );
  }
}
