import 'package:actividad13/constants.dart';
import 'package:flutter/material.dart';

import 'code_cupon.dart';
import 'detail_shop_cart.dart';
import 'shopping_cart.dart';

/**
 * 
 * En el shopping bag se renderiza una lista de productos que se agregan al carrito de compras.
 * El codigo de cupon.
 * El subtotal, envio, total y el boton para proceder al checkout
 */

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(children: <Widget>[
        SizedBox(height: kDefaultPadding),
        ShoppingCart(),
        SizedBox(height: kDefaultPadding),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      color: kTextColor.withOpacity(0.12),
                    ),
                  ],
                ),
                child: CodeCupon(),
              ),
              SizedBox(height: kDefaultPadding),
              /*subtotal, shipping and total */
              Column(
                children: <Widget>[
                  DetailShopCart(price: "299", title: "Subtotal"),
                  SizedBox(height: kDefaultPadding),
                  Divider(height: 2),
                  SizedBox(height: kDefaultPadding),
                  /*Otra linea */
                  DetailShopCart(price: "150", title: "Envío"),
                  SizedBox(height: kDefaultPadding),
                  Divider(height: 2),
                  SizedBox(height: kDefaultPadding),
                  /*Otra linea */
                  DetailShopCart(price: "1,047", title: "Total"),
                  SizedBox(height: kDefaultPadding),
                  Divider(height: 2),
                  SizedBox(height: kDefaultPadding),
                  /*Proceder a checkout btn */
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Proceder a checkout",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        /*Code cupon */
      ]),
    );
  }
}
