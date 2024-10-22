import 'package:flutter/material.dart';

import '../components/sigmatile.dart';
import '../models/sigma.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<String> sigmaName = [
    "Alpha Wolf",
    "Patrick Bateman",
    "Gigachad",
    "Gustavo Fring",
    "Thomas Shelby"
  ];
  List<String> sigmaPrice = ["999999", "99999", "999999", "9999", "99999"];
  List<String> sigmaDesc = [
    "A true Alpha.",
    "A sigma among men",
    "The one and only. chad.",
    "los pollos hermanos, well well well...",
    "🚬🚬🚬"
  ];
  List<String> imgPath = [
    'assets/images/alpha_wolf.webp',
    'assets/images/bateman.jpg',
    'assets/images/gigachad.webp',
    'assets/images/gustavo.jpeg',
    'assets/images/shelby.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 2),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey[600]),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            "Everyone tries to be a sigma... only true sigmas can manifest their potential",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "See all",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),

        SizedBox(height: 10),
        //Product list
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sigmaName.length,
                itemBuilder: (context, index) {
                  Sigma sigma = Sigma(
                      name: sigmaName[index],
                      description: sigmaDesc[index],
                      imagePath: imgPath[index],
                      price: sigmaPrice[index]);
                  return SigmaTile(sigma: sigma);
                })),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            height: 20,
            thickness: 2,
            color: Colors.grey[300],
          ),
        )
      ],
    );
  }
}
