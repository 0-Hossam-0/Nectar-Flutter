import 'package:flutter/material.dart';

class CategoryModel {
  final String routeName;
  final String image;
  final String name;
  final Color borderColor;
  final Color backgroundColor;

  const CategoryModel({
    required this.routeName,
    required this.borderColor,
    required this.image,
    required this.name,
    required this.backgroundColor,
  });
}
