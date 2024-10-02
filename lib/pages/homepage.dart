import 'package:basic_ecommerce_app/components/bot_nav_bar.dart';
import 'package:basic_ecommerce_app/pages/cart_page.dart';
import 'package:basic_ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [ShopPage(), CartPage()];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        // Redundant drawer code
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     icon: Icon(Icons.menu, color: Colors.black),
        //     onPressed: Scaffold.of(context).openDrawer,
        //   ),
        // ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'assets/images/alpha_logo.png',
                  color: Colors.grey,
                )),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 30,
                  ),
                  title: Text(
                    "HOME",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.grey,
                    size: 30,
                  ),
                  title: Text(
                    "ABOUT",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 30,
                ),
                title: Text(
                  "LOGOUT",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
