import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'MySearchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Breakfast',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffF7F8F8)),
          child: SvgPicture.asset(
            "assets/icons/Arrow - Left 2.svg",
            height: 20,
            width: 20,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffF7F8F8)),
            child: SvgPicture.asset(
              "assets/icons/dots.svg",
              height: 5,
              width: 5,
            ),
          )
        ],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Column(
          children: [
            MySearchBar()
          ],
        ),
      ),
    );
  }
}
