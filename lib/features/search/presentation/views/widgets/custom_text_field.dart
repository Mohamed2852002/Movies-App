import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        top: 20,
        right: 30,
        left: 30,
        bottom: 25,
      ),
      child: TextField(
        onChanged: (text) {
          log(text);
        },
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            kTextFieldSearchIcon,
            fit: BoxFit.none,
          ),
          hintText: "Search",
        ),
      ),
    );
  }
}
