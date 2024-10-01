import 'package:flutter/material.dart';


Widget box() {
  return Container(
    width: 160,
    height: 240,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            color: Color(0xffEEEEF0),
            image: DecorationImage(
              image: AssetImage("assets/images/product.png"),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(12), topStart: Radius.circular(12))
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10),
          height: 96,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(12), bottomStart: Radius.circular(12)),
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text("Accu-check Active", style: TextStyle(fontSize: 10, color: Color(0xff090F47))),
              SizedBox(height: 5),
              Text("Test Strip", style: TextStyle(fontSize: 10, color: Color(0xff090F47))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rs.112", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  Image.asset("assets/images/rating_label.png")
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}










// Widget box() {
//   return Container(
//     width: 160,
//     height: 240,
//     child: Column(
//       children: [
        
//         Row(
//           children: [
//             Container(
//               width: 240,
//               height: 140,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Color(0xffEEEEF0),
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/product.png"),
//                   fit: BoxFit.contain,
//                 )
//               ),
//             )
//           ],
//         ),

//         Row(
//           children: [
//             Container(
//               width: 240,
//               height: 100,
//               color: Colors.white,
//             )
//           ],
//         )

//       ],
//     ),
//   );
// }