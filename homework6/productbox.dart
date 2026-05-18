import 'package:flutter/material.dart';
import 'product.dart';

class ProductBox extends StatelessWidget {
  final Product product;

  ProductBox({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset("images/" + product.image,
              height: 100, width: 100),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(product.description),
                  Text("Price: ${product.price}"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
