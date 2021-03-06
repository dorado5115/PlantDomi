import 'package:actividad13/constants.dart';
import 'package:actividad13/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Este widget es la raiz de la aplicación.
  @override
  Widget build(BuildContext context) {
    /*Aqui empieza la aplicacion renderizando HomePageStateful */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Domi',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: 'Poppins', bodyColor: kTextColor),
      ),
      home: HomePageStateful(),
    );
  }
}
