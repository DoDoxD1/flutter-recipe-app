import 'package:flutter/material.dart';
import 'package:recipie_application/pages/home/home.dart';
import 'package:recipie_application/pages/splash/MySplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MySplashScreen(),
        '/welcome': (context) => const HomePage()
      },
    );
  }
}
