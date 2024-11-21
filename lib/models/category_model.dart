import 'package:flutter/material.dart';

class CategoryModel {
  final Icon icon;
  final String name;
  final List<String> subCategories;

  CategoryModel(
      {required this.name, required this.subCategories, required this.icon});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
      icon: Icon(Icons.electric_bolt),
      name: "Utilities",
      subCategories: ["Internet", "Electricity", "Water"]),
  CategoryModel(
      icon: Icon(Icons.electric_bolt),
      name: "Utilities",
      subCategories: ["Internet", "Electricity", "Water"]),
  CategoryModel(
      icon: Icon(Icons.electric_bolt),
      name: "Utilities",
      subCategories: ["Internet", "Electricity", "Water"]),
  CategoryModel(
      icon: Icon(Icons.electric_bolt),
      name: "Utilities",
      subCategories: ["Internet", "Electricity", "Water"]),
];
