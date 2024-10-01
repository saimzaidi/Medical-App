import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 Items in your cart",
                  style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45)),
                ),
                Text(
                  "Add More",
                  style: TextStyle(color: Color(0xff4157FF)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 82,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Image.asset("assets/images/MaskGroup.png")],
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sugar free gold", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                      Text("bottle of 500 pellets", style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45)),),
                      Text("Rs.25", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Column(
                    children: [Icon(Icons.cancel)],
                  )
                ],
              ),
            ),

            SizedBox(height: 15),

            Container(height: 1, color: Colors.grey.withOpacity(0.5)),

            SizedBox(height: 15),

                        Container(
              width: double.infinity,
              height: 82,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Image.asset("assets/images/MaskGroup.png")],
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sugar free gold", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                      Text("bottle of 500 pellets", style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45)),),
                      Text("Rs.25", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Column(
                    children: [Icon(Icons.cancel)],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
