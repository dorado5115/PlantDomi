import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class PriceAndTitle extends StatelessWidget {
  const PriceAndTitle({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "\$$price",
            style: TextStyle(fontSize: 22, color: kPrimaryColor),
          ),
          Text(
            title,
            style: TextStyle(
                color: kTextColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
