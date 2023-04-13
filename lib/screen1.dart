import 'package:flutter/material.dart';
import 'package:hero_animation/main.dart';
import 'package:hero_animation/screen2.dart';

class Screen1 extends StatelessWidget {
  final items = <Item>[
    Item(
        title: "Item 1",
        urlImage:
            "https://i.pinimg.com/736x/30/bc/b1/30bcb12a62d96fdf82a8dc68d00fe0da.jpg"),
    Item(
        title: "Item 2",
        urlImage:
            "https://i.pinimg.com/originals/98/02/af/9802af91b7a624edae79da21aa3f5030.jpg"),
    Item(
        title: "Item 3",
        urlImage:
            "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/06/12/thumbs/800x531/40682.jpg"),
    Item(
        title: "Item 4",
        urlImage:
            "https://cdn1.ntv.com.tr/gorsel/Jm8CjndyaESllHibZ6CbWg.jpg?width=1000&mode=crop&scale=both"),
    Item(
        title: "Item 5",
        urlImage:
            "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/09/07/56555.jpg"),
    Item(
        title: "Item 6",
        urlImage:
            "https://i.pinimg.com/736x/30/bc/b1/30bcb12a62d96fdf82a8dc68d00fe0da.jpg"),
  ];

  Widget buildImage(String urlImage) {
    return Image.network(
      urlImage,
      fit: BoxFit.cover,
      width: 100,
      height: 100,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final Item = items[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Screen2(item: Item);
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Hero(
                      transitionOnUserGestures: true,
                      tag: Item,
                      child: buildImage(Item.urlImage),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Season ${index + 1}",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
