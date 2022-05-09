import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import '../../components/plant_image.dart';
import '../../components/plant_price_title.dart';
import 'plant_description_part.dart';
/*
  Aqui se renderiza la imagen de la planta y los cuidados de la misma.
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

  final String image;
  final String title;
  final String description;
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
          PriceAndTitle(
            title: title,
            price: price,
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    DescriptionPart(
                      size: size,
                      description:
                          "Se necesita al menos 5 horas de sol por día",
                      icon: Icons.wb_sunny,
                      color: kPlant2Color,
                    ),
                    DescriptionPart(
                      size: size,
                      description: "Regar cada 3 horas, no menos de 2 horas",
                      icon: Icons.water_drop,
                      color: kPlant4Color,
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    DescriptionPart(
                      size: size,
                      description: "Mantener debajo de 25°C, no más de 30°C",
                      icon: Icons.thermostat,
                      color: kPlant1Color,
                    ),
                    DescriptionPart(
                      size: size,
                      description: "Cuidado con los malos climas",
                      icon: Icons.air_rounded,
                      color: kPlant5Color,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
