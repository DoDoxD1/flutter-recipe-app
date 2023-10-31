import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/category_model.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Category",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 25,
                  ),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return categoryBuilder(index: index);
              }),
        )
      ],
    );
  }

  Widget categoryBuilder({required index}) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: categories[index].boxColor.withOpacity(0.3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(categories[index].iconPath),
            ),
          ),
          Text(
            categories[index].name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}
