import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class PriceAndTitle extends StatelessWidget {
  const PriceAndTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "\$299",
            style: TextStyle(fontSize: 22, color: kPrimaryColor),
          ),
          Text(
            "Abedul",
            style: TextStyle(
                color: kTextColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
