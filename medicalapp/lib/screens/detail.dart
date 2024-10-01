import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths for the slider
    final List<String> imagePaths = [
      "assets/images/group3666.png",
      "assets/images/group3666.png",
      "assets/images/group3666.png"
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Image.asset("assets/images/ico_notification.png"),
              SizedBox(width: 10),
              Image.asset("assets/images/bcart.png"),
              SizedBox(width: 10)
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product title and subtitle
                  Text(
                    "Sugar Free Gold Low Calories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Etiam mollis metus non purus",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(9, 15, 71, 0.45)),
                  ),
                  SizedBox(height: 20),

                  // Slider using PageView.builder
                  Container(
                    height: 200, // You can adjust the height as per your needs
                    child: PageView.builder(
                      itemCount: imagePaths.length, // Total number of images
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imagePaths[index],
                          fit:
                              BoxFit.cover, // Make sure the image fits properly
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 20),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: "Rs. 99",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 15, 71, 0.5),
                                        decoration:
                                            TextDecoration.lineThrough)),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Rs. 56",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700))
                              ])),
                              Text("Etiam mollis",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 15, 71, 0.5)))
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/group1163.png"),
                              SizedBox(width: 10),
                              Text(
                                "Add to cart",
                                style: TextStyle(
                                    color: Color(0xff006AFF), fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),

                  SizedBox(height: 15),

                  Text("Package size",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(width: 1, color: Color(0xffFFA41B))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rs.106",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFFA41B)),
                            ),
                            Text("500 pellets",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                    color: Color(0xffFFA41B)))
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.circular(5),
                          // border: Border.all(width: 1, color: Color(0xffFFA41B))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rs.106",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text("500 pellets",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(9, 15, 71, 0.75)))
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.circular(5),
                          // border: Border.all(width: 1, color: Color(0xffFFA41B))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rs.106",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text("500 pellets",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(9, 15, 71, 0.75)))
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Text("Product Details",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text(
                    "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit",
                    style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45)),
                  ),
                  SizedBox(height: 10),
                  Text("Ingredients",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text(
                      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                      style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45))),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Expiry Date",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(width: 8),
                      Text("25/12/2023",
                          style: TextStyle(
                              color: Color.fromRGBO(9, 15, 71, 0.45))),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Text("Brand Name",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(width: 8),
                      Text("Something",
                          style: TextStyle(
                              color: Color.fromRGBO(9, 15, 71, 0.45))),
                    ],
                  ),

                  SizedBox(height: 25),

                  Image.asset("assets/images/rating_section.png"),

                  SizedBox(height: 25),

                  Image.asset("assets/images/list_item2.png"),

                  SizedBox(height: 50),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              right: 15,
              child: ElevatedButton(onPressed: () {}, child: Text("GO TO CART", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4157FF))),
            )
          ],
        ),
      ),
    );
  }
}
