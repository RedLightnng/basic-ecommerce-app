import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(42.0),
                child: Image.asset(
                  'assets/images/alpha_logo.png',
                  height: 300,
                ),
              ),
              Text(
                "ALPHA WOLF CLUB",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Text(
                  "Welcome to the shop of Alphas and Sigmas, here we will redefine what it means to be a true MAN.",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[900]),
                  child: Center(
                    child: Text(
                      "SHOP NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
