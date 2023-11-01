import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/diet_model.dart';

class PopularSection extends StatefulWidget {
  const PopularSection({super.key});

  @override
  State<PopularSection> createState() => _PopularSectionState();
}

class _PopularSectionState extends State<PopularSection> {
  List<Diet> diets = [];

  void _getDiets() {
    diets = Diet.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getDiets();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Popular",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                  ),
              itemCount: diets.length,
              itemBuilder: (context, index) {
                return popularDietBuilder(index: index);
              }),
        )
      ],
    );
  }

  Widget popularDietBuilder({required int index}) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: diets[index].viewIsSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        boxShadow: diets[index].viewIsSelected
            ? [
                BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.3),
                    offset: const Offset(0, 10),
                    blurRadius: 40,
                    spreadRadius: 0)
              ]
            : [],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            diets[index].iconPath,
            height: 50,
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                diets[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}",
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Color(0xff7B6F72)),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/icons/button.svg',
            width: 30,
          )
        ],
      ),
    );
  }
}
