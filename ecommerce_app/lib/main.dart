import 'package:ecommerce_app/pages/cart.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

//All components imports
import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:ecommerce_app/pages/cart.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Carousel Container
    Widget carouselImage = SizedBox(
      height: 200,
      width: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: const [
          AssetImage('images/1.jpeg'),
          AssetImage('images/1c.jpeg'),
          AssetImage('images/2.jpeg'),
          AssetImage('images/2c.jpeg'),
          AssetImage('images/3.jpeg'),
          AssetImage('images/3c.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: const Text('Adepana Shop'),
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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const Carts();
              })));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
//         Drawer Header
            UserAccountsDrawerHeader(
              accountName: const Text('Lloyd'),
              accountEmail: const Text('lloyd@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
              ),
              decoration: const BoxDecoration(color: Colors.orange),
            ),
//          Drawer body
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const Carts();
                }));
              },
              child: const ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.orange),
              ),
            ),
//          Drawer Divider
            const Divider(),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
      //Call the image method
      body: ListView(
        children: <Widget>[
          //Image carouselImage bgins her
          carouselImage,
          //Padding for the Categories
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10.0, bottom: 7.0),
            child: const Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          //Horizontal list view begins here
          const HorizontalList(),

          const Padding(padding: EdgeInsets.all(20.0)),
          Container(
            padding: const EdgeInsets.only(left: 10.0, bottom: 12.0),
            child: const Text(
              'Recent Products',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          //Product Grid View starts
          Container(
            height: 320.0,
            child: const Products(),
          )
        ],
      ),
    );
  }
}
