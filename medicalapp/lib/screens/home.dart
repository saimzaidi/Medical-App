import 'package:flutter/material.dart';
import 'package:medicalapp/screens/cart.dart';
import 'package:medicalapp/screens/detail.dart';
import 'package:medicalapp/screens/profile.dart';
import 'package:medicalapp/widgets/box.dart';
import 'package:medicalapp/widgets/widget-one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7FBFF),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Wrapping Stack in a Container with fixed height
              Container(
                height: 250, // Give Stack a fixed height
                child: Stack(
                  children: [
                    // Background image
                    Container(
                      width: double.infinity,
                      height: 213, // Set height for the image
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Rectangle.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),


                          ListTile(
                            leading: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                              },
                              child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/zaidi.jpg"),
                            ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset("assets/images/group3635.png"),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart()));
                                  },
                                  child: Image.asset("assets/images/group1184.png"),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Saim",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Welcome to Quick Medical Store",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned TextField
                    Positioned(
                      top: 180, // Positioning it below the image
                      left: 15,
                      right: 15,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search Medicine & Healthcare products",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(9, 15, 71, 0.45)),
                            icon: Icon(Icons.search),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        child: Text("Top Categories",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.25)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categoryWidget(
                              clr1: 0xFFFF9598,
                              clr2: 0xFFFF70A7,
                              text: "Dental"),
                          categoryWidget(
                              clr1: 0xff19E5A5,
                              clr2: 0xff15BD92,
                              text: "Wellnes"),
                          categoryWidget(
                              clr1: 0xFFFFC06F,
                              clr2: 0xFFFF793A,
                              text: "Homeo"),
                          categoryWidget(
                              clr1: 0xFF4DB7FF,
                              clr2: 0xFF4DB7FF,
                              text: "Eye care")
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Container(
                          width: double.infinity,
                          height: 146,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/background.png"),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 132,
                                  child: Text("Save extra on every order",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff1987FB),
                                          fontWeight: FontWeight.w700,
                                          height: 1)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 132,
                                  child: Text(
                                    "Etiam mollis metus non faucibus .",
                                    style: TextStyle(
                                        color: Color.fromRGBO(9, 15, 71, 0.65),
                                        height: .9),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Deals of the Day",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        Text("More",
                            style: TextStyle(
                                color: Color(0xff006AFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 6),

                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails()));
                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [box(), box()],),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0, bottom: 6),

                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails()));
                        },
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [box(), box()],),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
