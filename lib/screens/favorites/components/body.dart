import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/details/details_screen.dart';
import 'package:actividad13/screens/home/components/card_plant.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  // TODO: Overflowed pixels image

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: GridView.extent(
        padding: const EdgeInsets.only(
          right: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        childAspectRatio: 0.63,
        maxCrossAxisExtent: 200.0,
        children: List.generate(
          7,
          (index) => Center(
            child: CardPlant(
              image: "assets/images/mac.png",
              title: "Abedul",
              description: "Requiere mucho sol",
              price: 299,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPageStateful(),
                  ),
                );
              },
              color: kPlant1Color,
            ),
          ),
        ),
      ),
    );
  }
}
