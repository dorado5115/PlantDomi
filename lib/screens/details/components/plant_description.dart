import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import 'plant_price_title.dart';

class PlantDescription extends StatelessWidget {
  const PlantDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PriceAndTitle(),
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: <Widget>[
              Text(
                "Una de las plantas más bonitas del planeta, aún y aunque requieren mucho sol, con sus hojas brillantes llaman la atención.",
                style:
                    TextStyle(color: kTextColor, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                children: <Widget>[
                  Icon(Icons.local_shipping, color: kPrimaryColor),
                  SizedBox(width: kDefaultPadding),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Envío gratis a todo el país",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Aplican reestricciones",
                          style: TextStyle(
                            color: kTextLightColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                children: <Widget>[
                  Icon(Icons.subdirectory_arrow_left_rounded,
                      color: kPrimaryColor),
                  SizedBox(width: kDefaultPadding),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Devolución gratis",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Tienes hasta 30 días",
                          style: TextStyle(
                            color: kTextLightColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
