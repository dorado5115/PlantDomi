import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/details/details_screen.dart';
import 'package:actividad13/screens/home/components/card_plant.dart';
import 'package:flutter/material.dart';

class PlantSlider extends StatelessWidget {
  const PlantSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardPlant(
            image: "assets/images/mac.png",
            title: "Abedul",
            description: "Requiere mucho sol",
            price: 299,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageStateful(
                    image: "assets/images/mac.png",
                    title: "Abedul",
                    description: "Requiere mucho sol",
                    price: 299,
                    color: kPlant1Color,
                  ),
                ),
              );
            },
            color: kPlant1Color,
          ),
          CardPlant(
            image: "assets/images/arb.png",
            title: "Acal",
            description: "Requiere poco sol",
            price: 299,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageStateful(
                    image: "assets/images/arb.png",
                    title: "Acal",
                    description: "Requiere poco sol",
                    price: 299,
                    color: kPlant2Color,
                  ),
                ),
              );
            },
            color: kPlant2Color,
          ),
          CardPlant(
            image: "assets/images/flowers.png",
            title: "Acebo",
            description: "Requiere poco sol",
            price: 299,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPageStateful(
                    image: "assets/images/flowers.png",
                    title: "Acebo",
                    description: "Requiere poco sol",
                    price: 299,
                    color: kPlant3Color,
                  ),
                ),
              );
            },
            color: kPlant3Color,
          ),
        ],
      ),
    );
  }
}
