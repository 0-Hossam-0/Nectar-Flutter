import 'package:flutter/material.dart';
import 'package:nectar/features/explore/data/models/explore_model.dart';
import 'package:sizer/sizer.dart';

class FoodCategory extends StatelessWidget {
  final CategoryModel category;

  const FoodCategory({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(category.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: category.borderColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(category.image, fit: BoxFit.cover),
              Text(
                category.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 3.8.w,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
