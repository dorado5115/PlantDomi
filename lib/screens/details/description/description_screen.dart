import 'package:flutter/material.dart';

import 'components/body.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.color})
      : super(key: key);

  final String image, title, description;
  final int price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: image,
        title: title,
        description: description,
        price: price,
        color: color,
      ),
    );
  }
}
