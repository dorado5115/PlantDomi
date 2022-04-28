import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class CodeCupon extends StatelessWidget {
  const CodeCupon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Códgio de descuento',
          style: TextStyle(fontSize: 18, color: kTextLightColor),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                      top: kDefaultPadding / 2,
                      bottom: kDefaultPadding / 2),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: const Text('Aplicar'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
