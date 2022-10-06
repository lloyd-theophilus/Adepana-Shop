import 'package:flutter/material.dart';
import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailPrice;
  final productDetailOldPrice;

  const ProductDetails(
      {Key? key,
      this.productDetailName,
      this.productDetailPicture,
      this.productDetailPrice,
      this.productDetailOldPrice})
      : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: InkWell(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const HomePage();
              })));
            }),
            child: const Text('Adepana Shop')),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        '\$${widget.productDetailOldPrice}',
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                        child: Text('\$${widget.productDetailPrice}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      )
                    ],
                  ),
                ),
              ),
              child: Container(
                color: Colors.white,
                //Use widget to give a reference to the base class
                child: Image.asset(
                  widget.productDetailPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Product size dropdown button starts here
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          title: const Text('Size'),
                          content: const Text('Choose the size of the product'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                //Clossing the dialog
                                Navigator.of(context).pop(context);
                              },
                              color: Colors.orange,
                              child: const Text(
                                'Close',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        );
                      }));
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.1,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text('Size'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AlertDialog(
                          title: const Text('Color'),
                          content: const Text('Select the color type'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                //Clossing the dialog
                                Navigator.of(context).pop(context);
                              },
                              color: Colors.orange,
                              child: const Text(
                                'Close',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        );
                      }));
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.1,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text('Color'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Quantity'),
                          content: const Text('Select the product quantity'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              color: Colors.orange,
                              child: const Text(
                                'Close',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.1,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text('Qty'),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),
            ],
          ),

          //Button two for buy
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.orange,
                      textColor: Colors.white,
                      elevation: 0.1,
                      child: const Text('Buy Now'))),
              IconButton(
                icon: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const Carts();
                  })));
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.orange),
                onPressed: () {},
              )
            ],
          ),

          //Product details text
          const Divider(),

          const ListTile(
            title: Text(
              'Product Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search will uncover many web sites still in their infancy.'),
          ),
          const Divider(),
          //Add a product bran variable to the product details
          Row(
            children: const <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text(
                    'Product Brand',
                    style: TextStyle(color: Colors.grey),
                  )),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Nike'),
              )
            ],
          ),

          Row(
            children: const <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: Text('Product Condition',
                      style: TextStyle(color: Colors.grey))),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('New'),
              ),
            ],
          ),
          const Divider(),
          Container(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: const Text('Related Products',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          //=====================Related Product=========================================//////////
          Container(
            padding: const EdgeInsets.only(top: 25),
            height: 360.0,
            child: const RelatedProducts(),
          )
        ],
      ),
    );
  }
}

//=====================Related Product=========================================//////////
class RelatedProducts extends StatefulWidget {
  const RelatedProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<RelatedProducts> createState() => _RelatedProductsState();
}

class _RelatedProductsState extends State<RelatedProducts> {
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
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int index) {
          return RelatedProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class RelatedProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  const RelatedProduct(
      {Key? key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice})
      : super(key: key);

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
