import 'package:flutter/material.dart';
import 'package:sorting_visualizer/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // deactivate debug banner 
      debugShowCheckedModeBanner: false,
      home: HomePage(), 
    );
  }
}