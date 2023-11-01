import 'package:flutter/material.dart';

import '../MyAppBar.dart';
import 'CategoriesSection.dart';
import 'DietsSection.dart';
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
      appBar:
          PreferredSize(preferredSize: const Size.fromHeight(56), child: MyAppBar(title: "Breakfast",)),
      backgroundColor: Colors.white,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [MySearchBar(), SizedBox(height: 40,), CategoriesSection(), DietsSection()],
      ),
    );
  }
}
