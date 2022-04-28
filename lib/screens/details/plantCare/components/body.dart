import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import '../../components/plant_image.dart';
import '../../components/plant_price_title.dart';
import 'plant_description_part.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          PlantImage(size: size),
          PriceAndTitle(),
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
