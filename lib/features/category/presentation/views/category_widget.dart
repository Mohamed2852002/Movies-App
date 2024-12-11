import 'package:flutter/material.dart';

import 'category.dart';

class Categorywidget extends StatelessWidget {

  Category category ;
  Categorywidget({ required this.category })  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomRight ,
        children: [
          Image.network(category.imagename,
            height: double.infinity, width: double.infinity, fit: BoxFit.fill,) ,
          Container(
              alignment: Alignment.center ,
              child: Text(category.title , style: TextStyle(color: Colors.white ,fontSize: 30 ,
                  fontWeight: FontWeight.bold ),
              ) )
        ],




      ),
    );
  }
}
