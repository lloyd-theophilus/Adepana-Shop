import 'package:flutter/material.dart';
import 'package:ecommerce_app/main.dart';

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
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
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
                              onPressed:() {
                                Navigator.of(context).pop(context);
                              },
                              color: Colors.orange,
                              child:const Text('Close', style: TextStyle(color: Colors.white),),
                              
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
                onPressed: () {},
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
            title: Text('Product Details', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search will uncover many web sites still in their infancy.'),
          ),
          const Divider(),
           //Add a product bran variable to the product details
          Row(
            children: const <Widget>[
             Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child: Text('Product Brand', style: TextStyle(color: Colors.grey),)),
             Padding(padding: EdgeInsets.all(5.0),
             child: Text('Nike'),
             )
             
            ],
          ),
         
           Row(
            children: const <Widget> [
             Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child: Text('Product Condition', style: TextStyle(color: Colors.grey))),
             Padding(padding: EdgeInsets.all(5.0),
             child: Text('New'),
             ),
            ],
          )
        ],
      ),
    );
  }
}
