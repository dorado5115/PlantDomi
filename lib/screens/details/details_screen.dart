import 'package:actividad13/screens/details/components/body.dart';
import 'package:actividad13/screens/details/components/btns_navbar.dart';
import 'package:actividad13/screens/details/description/description_screen.dart';
import 'package:actividad13/screens/details/plantCare/care_plant_screen.dart';
import 'package:flutter/material.dart';

class DetailsPageStateful extends StatefulWidget {
  const DetailsPageStateful({Key? key}) : super(key: key);

  @override
  State<DetailsPageStateful> createState() => _DetailsPageStatefulState();
}

class _DetailsPageStatefulState extends State<DetailsPageStateful> {
  int pageIndex = 0;

  final pages = [
    const DescriptionScreen(),
    const CarePlantScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar:
          BtnsNavbar(pageIndex: pageIndex, callSetState: callSetState),
    );
  }

  void callSetState(int number) {
    setState(() {
      pageIndex = number;
    }); // it can be called without parameters. It will redraw based on changes done in bottomNavbar
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
