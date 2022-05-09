import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/details/details_screen.dart';
import 'package:actividad13/screens/home/components/card_plant.dart';
import 'package:flutter/material.dart';

/*
  Aqui en favorite Screen se renderiza en modo de GridView
  las plantas las cuales se encuentran con un corazon verde.

  Aqui tengo los componentes CardPlant, el cual es la tarjeta de 
  cada planta que vemos en la aplicacion.

  Y DetailsPageStateful es una pantalla la cual es la que se abre
  cuando se presiona cada una de estas tarjetas.

 */
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
          ),
        ),
      ),
    );
  }
}
