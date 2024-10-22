import 'package:basic_ecommerce_app/pages/homepage.dart';
import 'package:basic_ecommerce_app/pages/intro_page.dart';
import 'package:basic_ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/shop': (context) => ShopPage()
      },
    );
  }
}
