import 'package:flutter/material.dart';

import '../MyAppBar.dart';
import 'CategoriesSection.dart';
import 'MySearchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(56), child: MyAppBar()),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [MySearchBar(), CategoriesSection()],
        ),
      ),
    );
  }
}
