import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
    final List <Categorymodel> categorie = const[
   Categorymodel(categoryname:'business',image: 'assets/business.jpg' ), 
   Categorymodel(categoryname:'entertaiment',image: 'assets/entertaiment.jpg' ), 
   Categorymodel(categoryname:'science',image: 'assets/science.jpg' ), 
   Categorymodel(categoryname:'health',image: 'assets/health.jpg' ), 
   Categorymodel(categoryname:'technology',image: 'assets/technology.jpg' ), 
   Categorymodel(categoryname:'sports',image: 'assets/sports.jpg' ),
   Categorymodel(categoryname:'general',image: 'assets/general.jpg' ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorie.length,
        itemBuilder: (context,index){
          return CategoryCard(
            category: 
          categorie[index],);
        }
      ),
    );
  }
}