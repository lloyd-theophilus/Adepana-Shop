import 'package:flutter/material.dart';

//Import components
import 'package:ecommerce_app/components/cart_products.dart';

class Carts extends StatefulWidget {
  const Carts({Key? key}) : super(key: key);

  @override
  State<Carts> createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: const Text('Shopping Cart'),
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
      //Cart products used here
      body: const CartProducts(),
      //End of Cart products

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children:  [
            const Expanded(
                child: ListTile(
              title: Text('Total'),
              subtitle: Text('\$230'),
            )),
            Expanded(child:
             MaterialButton(
              onPressed: () {},
            color: Colors.orange,
            padding: const EdgeInsets.only(right: 0.0),
            child: const Text('Checkout', style: TextStyle(color: Colors.white, fontSize: 16),),
            
            ))
          ],
        ),
      ),
    );
  }
}
