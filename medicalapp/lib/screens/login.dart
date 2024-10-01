import 'package:flutter/material.dart';
import 'package:medicalapp/screens/home.dart';
// import 'package:medicalapp/screens/home.dart';
import 'package:medicalapp/widgets/logo.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Logo Widget
//               logoWidget(
//                 color: Colors.black,
//               ),
              
//               // Spacer between logo and input field
//               SizedBox(height: 70),
              
//               // Instruction Text
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                 child: Text(
//                   "Please Enter your Mobile Number to Login/Sign Up",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black.withOpacity(0.5),
//                   ),
//                   // textAlign: TextAlign.center,
//                 ),
//               ),
              
//               // Spacer
//               SizedBox(height: 30),
              

// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//   child: TextField(
//     // keyboardType: TextInputType.phone,
//     decoration: InputDecoration(
//       hintText: '+91 9265614292',
//       hintStyle: TextStyle(
//         fontSize: 24,
//         color: Color.fromRGBO(9, 15, 71, 0.45)
//       ),
//       contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8),
//         borderSide: BorderSide(color: Colors.black, width: 1),
//       ),
//     ),
//   ),
// ),
              
//               // Spacer between input field and button
//               SizedBox(height: 30),
              
//               // Continue Button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 48,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Define what happens when the button is pressed
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF3B72FF), // Button background color
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                     ),
//                     child: Text(
//                       "CONTINUE",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logoWidget(color: Colors.black), // first component (Row 1)

          SizedBox(height: 70), // space between logo and next component (text)

          Padding(                  // second component (Row 2)
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Please Enter your Mobile Number to Login/Sign Up",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          
          SizedBox(height: 30), // spacer

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "+91 9265614292",
                hintStyle: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(9, 15, 71, 0.45)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: Colors.black)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)
              ),
            ),
          ),

          SizedBox(height: 30), // spacer

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){
                // on pressed funtionality
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
              }, child: Text("CONTINUE", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF3B72FF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),)
            ),
          )
        ]
      )
    );
  }
}