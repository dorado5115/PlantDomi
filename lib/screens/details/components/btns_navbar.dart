import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/shoppingBag/shoppin_bag_screen.dart';
import 'package:flutter/material.dart';

class BtnsNavbar extends StatefulWidget {
  const BtnsNavbar({Key? key, required this.callSetState, this.pageIndex = 0})
      : super(key: key);

  final Function callSetState;
  final int pageIndex;

  @override
  State<BtnsNavbar> createState() => _BtnsNavbarState();
}

class _BtnsNavbarState extends State<BtnsNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Comprar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kBackgroundColor,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: kBackgroundColor,
            ),
            child: TextButton(
              onPressed: () {
                widget.pageIndex == 1
                    ? widget.callSetState(0)
                    : widget.callSetState(1);
              },
              child: Text(
                widget.pageIndex == 0 ? 'Cuidados' : 'Descripción',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
