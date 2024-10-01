import 'package:flutter/material.dart';

logoWidget({color = Colors.white, opacity = 0.5, margin}) {
  return Container(
    // decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.red)),
    margin: margin,
    width: 289,
    height: 130,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage("assets/images/Vector.png")),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                 BoxShadow(
                  color: Colors.grey.withOpacity(opacity),  // Shadow color with opacity
                  spreadRadius: 2,  // Spread of the shadow
                  blurRadius: 5,    // Blur radius for smooth shadow
                  offset: Offset(0, 4),  // Offset: x(horizontal), y(vertical)
                ),
              ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Quick Medical", style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
              height: 2,
              color: color,
              // fontFamily: "ofadiOne"
            ),)
          ],
        )
      ],
    ),
  );
}