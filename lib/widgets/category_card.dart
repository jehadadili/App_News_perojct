import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/screen/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
 final Categorymodel category ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
          return   CategoryScreen(
            category: category.categoryname,
          );
        }) );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          height: 100,
          width: 200,
         decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:  DecorationImage(    
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          ),
          child:  Center(
            child: Text(
              category.categoryname,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
        
          ),
          
        ),
      ),
    );
  }
}
