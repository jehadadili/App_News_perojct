import 'package:flutter/material.dart';
import 'package:news/widgets/news_listserver_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen ({super.key,required this.category});
  final String category ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers:[
      NewsListViewBuilder(
        category: category,
      ),
    ] ) );
  }
}