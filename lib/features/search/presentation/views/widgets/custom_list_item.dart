import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxlN43fZveSjOFapAiHF6jEqWmQRWA273LTw&s",
        width: 140.w,
        height: 89.h,
        fit: BoxFit.cover,
      ),
      title: const Text("Harry Potter Pack"),
      subtitle: const Text("2001\nThe Philosopher`s Stone"),
    );
  }
}
