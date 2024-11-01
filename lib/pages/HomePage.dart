import 'package:flutter/material.dart';
import 'package:food_shop/widgets/All_food.dart';
import 'package:food_shop/widgets/CategoriesWidget.dart';

import 'package:food_shop/widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(children: [
        
        //appbar
        HomeAppBar(),

        // categori
        Padding(padding: EdgeInsets.only(top: 20, left: 10),
       child: Text(
        "Category",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
        ),
       ),
        ),

        //Categories
        Categorieswidget(),

        Padding(padding: EdgeInsets.only(top:20, left: 10 ),
          child: Text(
            'All Food',
            style: TextStyle(fontWeight: FontWeight.bold, 
            fontSize: 20),
          ),
          ),

          //All Food Items Widgets
          Expanded(
            child: SingleChildScrollView(
             child: Allfood(),
          ),
          ),

        Allfood(),

        
       ],
      )
      
    );
  }
}



