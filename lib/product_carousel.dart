import 'package:flutter/material.dart';

import 'models/product_model.dart';

class ProductCarousel extends StatelessWidget {
  final String title;
  final List<Product> products;

  const ProductCarousel({Key key, this.title, this.products}) : super(key: key);

  _buildProductCard(int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      width: 150.0,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0.0, 2.0),
          blurRadius: 6.0,
        ),
      ]),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(products[index].imageUrl),
              height: 100.0,
              width: 150.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            products[index].name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$${products[index].price.toStringAsFixed(2)}",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4.0,
                ),
                FlatButton(
                    padding: EdgeInsets.all(4.0),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 280.0,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildProductCard(index);
              }),
        ),
      ],
    );
  }
}
