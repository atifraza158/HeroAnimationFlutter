import 'package:flutter/material.dart';

import 'package:hero_animation/main.dart';

class Screen2 extends StatelessWidget {
  final Item item;

  Screen2({required this.item});

  Widget buildImage() => AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          item.urlImage,
          fit: BoxFit.cover,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Hero(
        transitionOnUserGestures: true,
        tag: item,
        child: buildImage(),
      ),
    );
  }
}
