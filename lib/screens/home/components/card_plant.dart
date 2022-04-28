import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class CardPlant extends StatelessWidget {
  const CardPlant({
    Key? key,
    this.image = '',
    this.title = '',
    this.description = '',
    this.price = 0,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final String image, title, description;
  final Color color;
  final int price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              top: kDefaultPadding - 8,
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding - 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: kTextColor.withOpacity(0.12),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: 18)),
                    TextSpan(
                        text: "$description\n",
                        style: TextStyle(
                            fontSize: 16, color: kTextDescriptionColor)),
                  ]),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
