import 'package:flutter/material.dart';

import 'shopping_bag_item.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ShoppingBagItem();
        },
      ),
    );
  }
}
