import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipie_application/models/diet_model.dart';

class DietsSection extends StatefulWidget {
  const DietsSection({super.key});

  @override
  State<DietsSection> createState() => _DietsSectionState();
}

class _DietsSectionState extends State<DietsSection> {
  List<Diet> diets = [];

  void _getDiet() {
    diets = Diet.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getDiet();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Recommendations\nfor Diet",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 240,
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 25,
                  ),
              scrollDirection: Axis.horizontal,
              itemCount: diets.length,
              itemBuilder: (context, index) {
                return dietBuilder(index: index);
              }),
        )
      ],
    );
  }

  Widget dietBuilder({required int index}) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
        color: diets[index].boxColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(diets[index].iconPath),
          Column(
            children: [
              Text(
                diets[index].name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}",
                style: const TextStyle(
                  color: Color(0xff7B6F72),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                diets[index].viewIsSelected? const Color(0xff9DCEFF): Colors.transparent,
                diets[index].viewIsSelected? const Color(0xff92A3FD): Colors.transparent,
              ]),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                "View",
                style: TextStyle(
                  color: diets[index].viewIsSelected? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
