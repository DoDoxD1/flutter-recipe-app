import 'package:flutter/material.dart';
import 'package:recipie_application/pages/home/PopularSection.dart';

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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: MyAppBar(
            title: "Breakfast",
          )),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const MySearchBar(),
          const SizedBox(
            height: 40,
          ),
          const CategoriesSection(),
          const SizedBox(
            height: 40,
          ),
          const DietsSection(),
          const SizedBox(
            height: 40,
          ),
          const PopularSection(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
