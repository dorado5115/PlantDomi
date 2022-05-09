import 'package:actividad13/screens/details/components/btns_navbar.dart';
import 'package:actividad13/screens/details/description/description_screen.dart';
import 'package:actividad13/screens/details/plantCare/care_plant_screen.dart';
import 'package:flutter/material.dart';

/*
  Esta es una pantalla la cual es la que se abre cuando se presiona
  cada una de estas tarjetas.
  Aqui se empieza renderizando el appbar, el body y el bottomNavBar
  de la pantalla details que es la que se abre cuando se presiona
  cada una de las tarjetas de la pantalla home.

  Y tengo dos pantallas DescriptionScreen y CarePlantScreen,
  la primera menciona la descripcion de la planta y la segunda
  menciona el cuidado de la planta.

  El bottomNavBar es una barra de navegacion que en este caso cuenta
  con dos botones "comprar" y "cuidados" que este ultimo cambia
  cuando cambia de pantalla.

 */

class DetailsPageStateful extends StatefulWidget {
  const DetailsPageStateful(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.color})
      : super(key: key);

  final String image, title, description;
  final int price;
  final Color color;

  @override
  State<DetailsPageStateful> createState() => _DetailsPageStatefulState();
}

class _DetailsPageStatefulState extends State<DetailsPageStateful> {
  int pageIndex = 0;
  String _image = '', _title = '', _description = '';
  int _price = 0;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();
    _image = widget.image;
    _title = widget.title;
    _description = widget.description;
    _price = widget.price;
    _color = widget.color;
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return DescriptionScreen(
          image: _image,
          title: _title,
          description: _description,
          price: _price,
          color: _color,
        );
      case 1:
        return CarePlantScreen(
          image: _image,
          title: _title,
          description: _description,
          price: _price,
          color: _color,
        );
      default:
        return DescriptionScreen(
          image: _image,
          title: _title,
          description: _description,
          price: _price,
          color: _color,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(pageIndex),
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

/* class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.color})
      : super(key: key);

  final String image, title, description;
  final int price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: image,
        title: title,
        description: description,
        price: price,
        color: color,
      ),
    );
  }
}
 */