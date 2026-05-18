import 'package:flutter/material.dart';
import 'product.dart';
import 'productbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: "iPhone",
        brand: "Apple",
        description: "iPhone is the stylist phone ever",
        price: 1000,
        image: "iphone.png"),
    Product(
        name: "Pixel",
        brand: "Google",
        description: "Pixel is the most featureful phone ever",
        price: 800,
        image: "pixel.png"),
    Product(
        name: "Laptop",
        brand: "Apple",
        description: "Laptop is most productive development tool",
        price: 2000,
        image: "laptop.png"),
    Product(
        name: "Tablet",
        brand: "Apple",
        description: "Tablet is the most useful device ever for meeting",
        price: 1500,
        image: "tablet.png"),
    Product(
        name: "Pendrive",
        brand: "Sandisk",
        description: "Pendrive is useful storage medium",
        price: 100,
        image: "pendrive.png"),
    Product(
        name: "Floppy Drive",
        brand: "Fromatted",
        description: "Floppy drive is useful rescue storage medium",
        price: 20,
        image: "floppy.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Listing'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductBox(product: products[index]);
          },
        ),
      ),
    );
  }
}
