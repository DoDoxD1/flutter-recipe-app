class Diet {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  Diet({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
  });

  static List<Diet> getDiets() {
    List<Diet> diets = [];

    diets.add(Diet(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180Cal',
        viewIsSelected: true));

    diets.add(Diet(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180Cal',
        viewIsSelected: true));

    return diets;
  }
}
