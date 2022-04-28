import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class DetailShopCart extends StatelessWidget {
  const DetailShopCart({
    Key? key,
    this.price = '',
    this.title = '',
  }) : super(key: key);

  final String price, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "$title",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Text(
          "\$$price",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(width: kDefaultPadding / 2),
        Text(
          "MXN",
          style: TextStyle(
            fontSize: 12,
            color: kTextDescriptionColor,
          ),
        ),
      ],
    );
  }
}
