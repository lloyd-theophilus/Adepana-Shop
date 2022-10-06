import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
        Category(
          imageLocation: 'images/cats/a.jpeg',
          imageCaption: 'Accessories',
        ),
        Category(
          imageLocation: 'images/cats/d.jpg',
          imageCaption: 'Ladys Dress',
        ),
        Category(
          imageLocation: 'images/cats/j.jpeg',
          imageCaption: 'Unisex Jeans',
        ),
        Category(
          imageLocation: 'images/cats/m.png',
          imageCaption: 'Men Shoes',
        ),
        Category(
          imageLocation: 'images/cats/s.png',
          imageCaption: 'Sneakers',
        ),
        Category(
          imageLocation: 'images/cats/sh.jpeg',
          imageCaption: 'T-Shirts',
        )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category(
      {Key? key, required this.imageLocation, required this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: () {},
    child: Container(
      width: 130.0,
      child: ListTile(
        title: Image.asset(imageLocation,
        width: 100.0,
        height: 50.0,
        ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(12.0),
        child: Text(imageCaption, style: const TextStyle(fontSize: 12.0),),
        )
        
      ),
    ),
    ),
    );
  }
}
