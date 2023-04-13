import 'package:flutter/material.dart';
import 'package:hero_animation/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Screen1(),
    );
  }
}

class Item {
  final String title;
  final String urlImage;

  Item({
    required this.title,
    required this.urlImage,
  });
}
