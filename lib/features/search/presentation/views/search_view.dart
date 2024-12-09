import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_list_item.dart';

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
          margin: REdgeInsets.only(top: 43,right: 35,left: 35,bottom: 25),
          child: TextField(
            onChanged: (text) {
              print(text);
            },
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.white,),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(0.4)
                ),
                borderRadius: BorderRadius.circular(40)
              ),
              hintText: "search",
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              fillColor: Color(0xFF514F4F),
              filled: true,
            ),
          ),
        ),
        Spacer(),
        Container(
          child: Column(
            children: [
              Image.asset("assets/images/Icon material-local-movies.png"),
              SizedBox(height: 5.h),
              Text("No movies found",style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}