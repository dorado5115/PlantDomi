import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class DescriptionPart extends StatelessWidget {
  const DescriptionPart({
    Key? key,
    required this.size,
    required this.icon,
    this.description = '',
    required this.color,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPadding / 3),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 50,
          ),
        ),
        SizedBox(width: kDefaultPadding / 2),
        Container(
          constraints: BoxConstraints(maxWidth: size.width * 0.25),
          child: Text(
            description,
            style: TextStyle(color: kTextDescriptionColor, fontSize: 15),
          ),
        )
      ],
    );
  }
}
