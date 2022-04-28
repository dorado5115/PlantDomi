import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class TitleWithSeeMoreButton extends StatelessWidget {
  const TitleWithSeeMoreButton({
    Key? key,
    this.title = '',
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Title(text: title),
          Spacer(),
          TextButton(
            onPressed: onTap,
            child: Text(
              "Ver más",
              style: TextStyle(
                  color: kSeeMoreColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: kSeeMoreColor,
            size: 17,
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    this.text = '',
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
