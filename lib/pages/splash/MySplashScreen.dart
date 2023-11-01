import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer(){
   var duration = const Duration(seconds: 5);
   return Timer(duration,route);
  }

  route(){
    Navigator.pushReplacementNamed(context, '/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Lottie.asset("assets/animations/animate.json",fit: BoxFit.fill),
      ),
    );
  }
}
