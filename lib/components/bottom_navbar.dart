import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key, this.pageIndex = 0, required this.callSetState})
      : super(key: key);

  final Function callSetState;
  final int pageIndex;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            blurRadius: 3,
            color: kTextColor.withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                widget.callSetState(0);
              },
              icon: widget.pageIndex == 0
                  ? Icon(Icons.home, color: kPrimaryColor, size: 30)
                  : Icon(Icons.home, color: kUnavailableColor, size: 30),
            ),
            IconButton(
              onPressed: () {
                widget.callSetState(1);
              },
              icon: widget.pageIndex == 1
                  ? Icon(Icons.favorite, color: kPrimaryColor, size: 30)
                  : Icon(Icons.favorite, color: kUnavailableColor, size: 30),
            ),
            IconButton(
              onPressed: () {
                widget.callSetState(2);
              },
              icon: widget.pageIndex == 2
                  ? Icon(Icons.shopping_bag, color: kPrimaryColor, size: 30)
                  : Icon(Icons.shopping_bag,
                      color: kUnavailableColor, size: 30),
            ),
          ]),
    );
  }
}
