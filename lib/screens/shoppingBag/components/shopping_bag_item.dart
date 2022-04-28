import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class ShoppingBagItem extends StatelessWidget {
  const ShoppingBagItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: size.width * 0.26,
            margin: EdgeInsets.only(bottom: kDefaultPadding),
            padding: EdgeInsets.only(
                top: kDefaultPadding / 2,
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
                bottom: kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: kPlant1Color,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Image.asset(
              'assets/images/mac.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: kDefaultPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Abedul',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Icon(Icons.clear_rounded,
                        color: kTextDescriptionColor, size: 20),
                  ],
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  'Descripción del producto',
                  style: TextStyle(color: kTextLightColor),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$299',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.highlight_remove_rounded,
                              color: kTextColor,
                            ),
                            SizedBox(width: kDefaultPadding / 2),
                            Text(
                              '1',
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: kDefaultPadding / 2),
                            Icon(Icons.add_circle_rounded,
                                color: kPrimaryColor),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
