import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({
    Key? key,
    required this.size,
    required this.image,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: size.width,
          child: Container(
            padding: EdgeInsets.only(top: kDefaultPadding),
            decoration: BoxDecoration(
              color: color,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
        ),
        Container(
          height: size.height * 0.50,
          width: size.width,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
