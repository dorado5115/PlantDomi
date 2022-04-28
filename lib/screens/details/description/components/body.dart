import 'package:flutter/material.dart';

import '../../components/plant_description.dart';
import '../../components/plant_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          PlantImage(size: size),
          PlantDescription(size: size),
        ],
      ),
    );
  }
}
