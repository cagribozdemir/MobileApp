import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.category, required this.onCategoryClick})
      : super(key: key);
  final Category category;
  final void Function() onCategoryClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: category.color,
        onTap: () => onCategoryClick(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color.withOpacity(0.5),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Text(category.name),
        ));
  }
}
