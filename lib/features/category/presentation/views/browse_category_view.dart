import 'package:flutter/material.dart';
import 'category.dart';
import 'category_widget.dart';

class BrowseCategoryView extends StatelessWidget {
  List<Category> categories = [];

  BrowseCategoryView(){
    for(int i =0 ; i<500;i++) {
      categories.add(Category(title:"Action",imagename :
      "https://th.bing.com/th?id=OIF.l%2fsFo5rPwopHWfxDw%2frG0w&w=330&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Column(

        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Text(" Browse category" , style: TextStyle(color: Colors.white ,fontSize: 30 ,
                    fontWeight: FontWeight.bold
                )
                  ,
                ),
              ) ],
          )  ,
          Expanded(

            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,mainAxisSpacing: 40,crossAxisSpacing: 50,
                childAspectRatio: 3/2 ),
              itemBuilder: (BuildContext context, int index) {
                return Categorywidget( category: categories[index],);

              },),
          )

        ] ) ;
  }
}