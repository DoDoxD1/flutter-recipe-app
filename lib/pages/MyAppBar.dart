import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
