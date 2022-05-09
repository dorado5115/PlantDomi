import 'package:actividad13/screens/details/plantCare/components/body.dart';
import 'package:flutter/material.dart';

class CarePlantScreen extends StatelessWidget {
  const CarePlantScreen(
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
