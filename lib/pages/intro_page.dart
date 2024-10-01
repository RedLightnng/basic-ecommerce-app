import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          //logo
          Image.asset(
            'assets/images/alpha_logo.png',
            height: 300,
          )
        ],
      ),
    );
  }
}
