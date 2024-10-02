import 'package:flutter/material.dart';

import '../models/sigma.dart';

class SigmaTile extends StatelessWidget {
  Sigma sigma;

  SigmaTile({super.key, required this.sigma});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 10),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //picture
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(sigma.imagePath)),

          //description
          Text(
            sigma.description,
            style: TextStyle(
              color: Colors.grey[800],
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      sigma.name,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '₹' + sigma.price,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
              //name
              // price
              //plus button
            ),
          ),
        ],
      ),
    );
  }
}
