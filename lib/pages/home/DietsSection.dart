import 'package:flutter/material.dart';
import 'package:recipie_application/models/diet_model.dart';

class DietsSection extends StatefulWidget {
  const DietsSection({super.key});

  @override
  State<DietsSection> createState() => _DietsSectionState();
}

class _DietsSectionState extends State<DietsSection> {

  List<Diet> diets = [];

  void _getDiet(){
    diets = Diet.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getDiet();
    return const Column(
      children: [
        Text("Diets"),
      ],
    );
  }
}
