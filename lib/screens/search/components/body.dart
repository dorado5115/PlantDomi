import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

/*
  Aqui se renderiza una pagina que se abre cuando presionas el boton de Buscar
  en la pantalla de Home.
  Aqui se renderiza una barra de busqueda y una lista de resultados de busqueda.
 */

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width,
          height: size.height * 0.1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 3,
                  color: kTextColor.withOpacity(0.11),
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_rounded),
                      color: kButtonLight,
                      iconSize: 22),
                  /*Input */
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kTextLightColor,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
