import 'package:flutter/material.dart';
import 'package:nectar/features/dairy/presentation/pages/dairy_view.dart';
import 'package:nectar/features/explore/data/models/explore_model.dart';
import 'package:nectar/features/beverages/presentation/pages/beverages_view.dart';

final List<CategoryModel> categories = const [
  CategoryModel(
    routeName: '',
    name: 'Frash Fruits & Vegetable',
    image: 'assets/images/vegetable.png',
    borderColor: Color(0xFF91cda6),
    backgroundColor: Color(0xFFeef7f1),
  ),
  CategoryModel(
    routeName: '',
    name: 'Cooking Oil & Ghee',
    image: 'assets/images/oil.png',
    borderColor: Color(0xFFfcd6ad),
    backgroundColor: Color(0xFFfef6ed),
  ),
  CategoryModel(
    routeName: '',
    name: 'Meat & Fish',
    image: 'assets/images/protien.png',
    borderColor: Color(0xFFf9bbae),
    backgroundColor: Color(0xFFfde8e4),
  ),
  CategoryModel(
    routeName: '',
    name: 'Bakery & Snacks',
    image: 'assets/images/bakery.png',
    borderColor: Color(0xFFdbbfe6),
    backgroundColor: Color(0xFFf4ebf7),
  ),
  CategoryModel(
    routeName: DairyView.routeName,
    name: 'Dairy & Eggs',
    image: 'assets/images/dairy.png',
    borderColor: Color(0xFFfde9ab),
    backgroundColor: Color(0xFFfff8e5),
  ),
  CategoryModel(
    routeName: BeveragesView.routeName,
    name: 'Beverages',
    image: 'assets/images/Beverages.png',
    borderColor: Color(0xFFc5e5f7),
    backgroundColor: Color(0xFFedf7fc),
  ),
  CategoryModel(
    routeName: '',
    name: 'Frash Fruits & Vegetable',
    image: 'assets/images/vegetable.png',
    borderColor: Color(0xFF91cda6),
    backgroundColor: Color(0xFFeef7f1),
  ),
  CategoryModel(
    routeName: '',
    name: 'Cooking Oil & Ghee',
    image: 'assets/images/oil.png',
    borderColor: Color(0xFFfcd6ad),
    backgroundColor: Color(0xFFfef6ed),
  ),
  CategoryModel(
    routeName: '',
    name: 'Meat & Fish',
    image: 'assets/images/protien.png',
    borderColor: Color(0xFFf9bbae),
    backgroundColor: Color(0xFFfde8e4),
  ),
  CategoryModel(
    routeName: '',
    name: 'Bakery & Snacks',
    image: 'assets/images/bakery.png',
    borderColor: Color(0xFFdbbfe6),
    backgroundColor: Color(0xFFf4ebf7),
  ),
];
