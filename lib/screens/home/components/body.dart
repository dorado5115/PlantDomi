import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import 'header_with_searchbar.dart';
import 'plant_slider.dart';
import 'title_with_see_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // total height and width of the screen
    Size size = MediaQuery.of(context).size;
    // it enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithSeeMoreButton(
            title: "Recomendados",
            onTap: () {},
          ),
          PlantSlider(),
          TitleWithSeeMoreButton(
            title: "Cuidados fáciles",
            onTap: () {},
          ),
          PlantSlider(),
          TitleWithSeeMoreButton(
            title: "Dentro de la casa",
            onTap: () {},
          ),
          PlantSlider(),
          TitleWithSeeMoreButton(
            title: "Agregados recientemente",
            onTap: () {},
          ),
          PlantSlider(),
        ],
      ),
    );
  }
}
