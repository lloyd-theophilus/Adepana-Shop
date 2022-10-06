import 'package:flutter/material.dart';

import 'package:ecommerce_app/pages/product_datils.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  //Creating a product list in a json format and mapping them
  var productList = [
    {
      'name': 'Winter',
      'picture': 'images/products/a1.jpeg',
      'oldPrice': 150,
      'price': 100,
    },
    {
      'name': 'Summer Style',
      'picture': 'images/products/b1.jpeg',
      'oldPrice': 200,
      'price': 100,
    },
    {
      'name': 'Drip Stlye',
      'picture': 'images/products/c1.jpeg',
      'oldPrice': 350,
      'price': 200,
    },
    {
      'name': 'Young Cupit',
      'picture': 'images/products/d1.jpeg',
      'oldPrice': 550,
      'price': 300,
    },
    {
      'name': 'Floria',
      'picture': 'images/products/e1.jpeg',
      'oldPrice': 950,
      'price': 500,
    },
    {
      'name': 'Smith Glan',
      'picture': 'images/products/f1.jpeg',
      'oldPrice': 750,
      'price': 500,
    },
    {
      'name': 'Summer Time',
      'picture': 'images/products/g1.jpeg',
      'oldPrice': 650,
      'price': 400,
    },
    {
      'name': 'Boss Engine',
      'picture': 'images/products/h1.jpeg',
      'oldPrice': 850,
      'price': 500,
    },
    {
      'name': 'Razer Kick',
      'picture': 'images/products/i1.jpeg',
      'oldPrice': 350,
      'price': 100,
    },
    {
      'name': 'Tome Winck',
      'picture': 'images/products/j1.jpeg',
      'oldPrice': 250,
      'price': 110,
    },
    {
      'name': 'Jumper',
      'picture': 'images/products/k1.jpeg',
      'oldPrice': 450,
      'price': 200,
    },
    {
      'name': 'Matsm',
      'picture': 'images/products/l1.jpeg',
      'oldPrice': 650,
      'price': 300,
    },
    {
      'name': 'Hot Walker',
      'picture': 'images/products/m1.jpeg',
      'oldPrice': 250,
      'price': 95,
    }
  ];
  @override
  Widget build(BuildContext context) {
    //display the product information here
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int index) {
          return SingleProducts(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProducts extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const SingleProducts(
      {Key? key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: productName,
      child: Material(
          child: InkWell(
        //Routing app pages
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            //Passing the value of the product to the product details page.
            builder: (context) {
             return ProductDetails(
              productDetailName: productName,
              productDetailPicture: productPicture,
              productDetailPrice: productPrice,
              productDetailOldPrice: productOldPrice,
             );
            },
          ));
        },
        child: GridTile(
          footer: Container(
            color: Colors.white60,
            child: ListTile(
              leading: Text(
                productName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                '\$$productPrice',
                style: const TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.w300),
              ),
              subtitle: Text(
                '\$$productOldPrice',
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.lineThrough),
              ),
            ),
          ),
          child: Image.asset(
            productPicture,
            fit: BoxFit.cover,
          ),
        ),
      )),
    ));
  }
}
