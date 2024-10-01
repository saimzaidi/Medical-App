import 'package:flutter/material.dart';

categoryWidget({clr1, clr2, text}) {
  // return                            Container(
  //                           width: 73,
  //                           height: 120,
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(25), 
  //                             color: Colors.white
  //                           ),
  //                           child: Column(
  //                             children: [
  //                               Container(
  //                                 margin: EdgeInsets.only(top: 10),
  //                                 width: 52,
  //                                 height: 58,
  //                                 decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(50),
  //                                   gradient: LinearGradient(
  //                                     begin: Alignment.topCenter,
  //                                     end: Alignment.bottomCenter,
  //                                     colors: [
  //                                       Color(0xFFFF9598),
  //                                       Color(0xFFFF70A7)
  //                                     ]
  //                                   )
  //                                 ),
  //                               ),
  //                               SizedBox(height: 8),
  //                               Text("Dental")



  return Container(
    width: 73,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white
    ),
    child: Column(
      children: [
        SizedBox(height: 5),
        Container(
          child: Container(
            width: 52,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(clr1),
                  Color(clr2)
                ]
              )
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(text, style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.95)))
      ],
    ),
  );
}