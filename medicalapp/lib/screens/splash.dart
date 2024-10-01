import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicalapp/screens/login.dart';
import 'package:medicalapp/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 375,
          height: 812,
          decoration: const BoxDecoration(
            color: Color(0xff4157FF),
            image: DecorationImage(image: AssetImage("assets/images/logo_background.png"), fit: BoxFit.cover),
          ),
          child: logoWidget(opacity: 0)
        ),
      ),
    );
  }
}