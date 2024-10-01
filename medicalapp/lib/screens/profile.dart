import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: Color.fromRGBO(14, 81, 255, 0.8))
                ),
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/zaidi.jpg"), radius: 35),
              ),
              title: Text("Hi, Saim Zaidi", style: TextStyle(fontSize: 16, color: Color.fromRGBO(9, 28, 63, 0.7))),
              subtitle: Text("Welcome to Quick Medical Store", style: TextStyle(fontSize: 14, color: Color.fromRGBO(9, 28, 63, 0.7))),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    ListTile(leading: Image.asset("assets/images/edit.png"), title: Text("Edit Profile"), trailing: Icon(Icons.arrow_circle_right),),
                    Container(width: 320, height: 1, color: Colors.grey.withOpacity(0.4),),
                    
                    ListTile(leading: Image.asset("assets/images/order.png"), title: Text("My Orders"), trailing: Icon(Icons.arrow_circle_right),),
                    Container(width: 320, height: 1, color: Colors.grey.withOpacity(0.4),),
                    
                    ListTile(leading: Image.asset("assets/images/billing.png"), title: Text("Billing"), trailing: Icon(Icons.arrow_circle_right),),
                    Container(width: 320, height: 1, color: Colors.grey.withOpacity(0.4),),

                    ListTile(leading: Image.asset("assets/images/faq.png"), title: Text("Faq"), trailing: Icon(Icons.arrow_circle_right),),
                    Container(width: 320, height: 1, color: Colors.grey.withOpacity(0.4),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

