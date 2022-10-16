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
            cartProductName: cart_product_list[index]['name'],
            cartProductPicture: cart_product_list[index]['picture'],
            cartPrice: cart_product_list[index]['price'],
            cartProductColor: cart_product_list[index]['color'],
            cartProductSize: cart_product_list[index]['size'],
            cartProductQuantity: cart_product_list[index]['quantity'],
          );
        });
  }
}

class single_cart_product extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQuantity;

  const single_cart_product(
      {Key? key,
      this.cartProductName,
      this.cartProductPicture,
      this.cartProductSize,
      this.cartProductColor,
      this.cartProductQuantity,
      this.cartPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Leading section contains the image
        leading: Image.asset(cartProductPicture),
        //This section contains the product name
        title: Text(cartProductName),
        subtitle: Column(
          children: <Widget>[
          //This section contains the product size
          Row(
            children: [
              const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Size:'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(cartProductSize),
          ),
          //This section is for product color
          const Padding(
            padding: EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 8.0),
            child: Text('Color:'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(cartProductColor),
          ),
          //his section is the product price
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('\$$cartPrice', style: const TextStyle(color: Colors.black),),
          )
          
          //Text(CartproductQuantity)
        ]),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
          children: <Widget>[
            IconButton(icon: const Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text('$cartProductQuantity'),
            IconButton(icon: const Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
          ),
        ),
      ),
    );
  }
}
