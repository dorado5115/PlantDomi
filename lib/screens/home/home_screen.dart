import 'package:actividad13/components/bottom_navbar.dart';
import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/favorites/favorites_screen.dart';
import 'package:actividad13/screens/home/components/body.dart';
import 'package:actividad13/screens/shoppingBag/shoppin_bag_screen.dart';
import 'package:flutter/material.dart';

class HomePageStateful extends StatefulWidget {
  const HomePageStateful({Key? key}) : super(key: key);

  @override
  State<HomePageStateful> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ShoppingBagScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
      body: pages[pageIndex],
      bottomNavigationBar:
          BottomNavbar(pageIndex: pageIndex, callSetState: callSetState),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: kDefaultPadding * 2.5),
            ListTile(
              title: Text(
                'Dentro de la casa',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Cuidados fáciles',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Requieren poca agua',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Requieren poco sol',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: size.height * 0.6),
            ListTile(
              title: Text(
                'Salir',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }

  void callSetState(int number) {
    setState(() {
      pageIndex = number;
    }); // it can be called without parameters. It will redraw based on changes done in bottomNavbar
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
