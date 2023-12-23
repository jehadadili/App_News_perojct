import 'package:flutter/material.dart';
import 'package:news/screen/home_screen.dart';

void main(List<String> args) {

  runApp(const NewsApp());      
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}