import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food tester'];

  @override
  Widget build(context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _products.add('Advanced food tester');
                });
              },
              child: Text('Add product')),
        ),
        Products(_products)
      ],
    );
  }
}
