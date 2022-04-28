import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import 'plant_description.dart';
import 'plant_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[PlantImage(size: size), PlantDescription(size: size)],
    );
  }
}
