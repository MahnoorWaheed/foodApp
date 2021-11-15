import 'package:flutter/material.dart';
import 'package:fruit_market/bottomnavbar/favorites.dart';
import 'package:fruit_market/bottomnavbar/myaccount.dart';
import 'package:fruit_market/bottomnavbar/shoppingcart.dart';
import 'package:fruit_market/veges/dashboard.dart';

class BottNavBar extends StatefulWidget {
  const BottNavBar({ Key? key }) : super(key: key);

  @override
  _BottNavBarState createState() => _BottNavBarState();
}

class _BottNavBarState extends State<BottNavBar> {
  int _selectedIndex = 0;
  // PageController controller = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  PageController _controller = PageController(
    initialPage: 0,
  );
  List<Widget> _widgetOptions = [
    DashBoard(),
    ShoppingCart(),
    Favorites(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
          backgroundColor: Colors.white,
  selectedItemColor: Colors.lightGreen.shade700,
  unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shopping Cart',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}