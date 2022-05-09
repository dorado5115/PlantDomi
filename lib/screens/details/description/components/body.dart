import 'package:flutter/material.dart';

import '../../components/plant_description.dart';
import '../../components/plant_image.dart';

/*
  Aqui se renderiza la imagen de la planta y la descripcion de la misma.
 */
class Body extends StatelessWidget {
  const Body(
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          PlantImage(
            size: size,
            image: image,
            color: color,
          ),
          PlantDescription(
            size: size,
            title: title,
            price: price,
          ),
        ],
      ),
    );
  }
}
