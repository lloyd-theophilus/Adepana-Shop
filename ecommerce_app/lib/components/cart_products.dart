import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  // ignore: non_constant_identifier_names
  var cart_product_list = [
    {
      'name': 'Winter',
      'picture': 'images/products/a1.jpeg',
      'price': 100,
      'size': 'M',
      'color': 'Red',
      'quantity': 1,
    },
    {
      'name': 'Summer',
      'picture': 'images/products/b1.jpeg',
      'price': 100,
      'size': 'L',
      'color': 'Yellow',
      'quantity': 1
    },
    {
      'name': 'Drip ',
      'picture': 'images/products/c1.jpeg',
      'price': 200,
      'size': 'S',
      'color': 'Blue',
      'quantity': 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cart_product_list.length,
        itemBuilder: (context, index) {
          return single_cart_product(
            CartproductName: cart_product_list[index]['name'],
            CartproductPicture: cart_product_list[index]['picture'],
            CartPrice: cart_product_list[index]['price'],
            CartproductColor: cart_product_list[index]['color'],
            CartproductSize: cart_product_list[index]['size'],
            CartproductQuantity: cart_product_list[index]['quantity'],
          );
        });
  }
}

class single_cart_product extends StatelessWidget {
  final CartproductName;
  final CartproductPicture;
  final CartPrice;
  final CartproductSize;
  final CartproductColor;
  final CartproductQuantity;

  const single_cart_product(
      {Key? key,
      this.CartproductName,
      this.CartproductPicture,
      this.CartproductSize,
      this.CartproductColor,
      this.CartproductQuantity,
      this.CartPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Leading section contains the image
        leading: Image.asset(CartproductPicture),
        //This section contains the product name
        title: Text(CartproductName),
        subtitle: Row(children: <Widget>[
          //This section contains the product size
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Size:'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(CartproductSize),
          ),
          //This section is for product color
          const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
            child: Text('Color:'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(CartproductColor),
          ),
          //his section is the product price
          const Padding(padding: EdgeInsets.only(left: 20.0)),
          Text('\$$CartPrice'),
          //Text(CartproductQuantity)
        ]),
        
      ),
    );
  }
}
