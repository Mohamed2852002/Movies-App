import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: REdgeInsets.only(
            top: 43,
            right: 35,
            left: 35,
            bottom: 25,
          ),
          child: TextField(
            onChanged: (text) {
              log(text);
            },
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(40)),
              hintText: "search",
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              fillColor: const Color(0xFF514F4F),
              filled: true,
            ),
          ),
        ),
        const Spacer(),
        RSizedBox(
          child: Column(
            children: [
              Image.asset("assets/images/Icon material-local-movies.png"),
              SizedBox(height: 5.h),
              const Text(
                "No movies found",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
