import 'package:billy_bills_reminder_app/models/subcategory_model.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final Icon icon;
  final String name;
  final List<SubCategoryModel> subCategories;

  CategoryModel(
      {required this.name, required this.subCategories, required this.icon});
}

List<CategoryModel> categoriesList = [
  CategoryModel(
      icon: Icon(Icons.electric_bolt),
      name: "Utilities",
      subCategories: [
        SubCategoryModel(name: "Internet", icon: Icons.wifi),
        SubCategoryModel(name: "Electricity", icon: Icons.bolt),
        SubCategoryModel(name: "Water", icon: Icons.water_drop)
      ]),
  CategoryModel(
      icon: Icon(Icons.tv),
      name: "Entertainment and Subscription",
      subCategories: [
        SubCategoryModel(name: "Internet", icon: Icons.wifi),
        SubCategoryModel(name: "Electricity", icon: Icons.bolt),
        SubCategoryModel(name: "Water", icon: Icons.water_drop)
      ]),
  CategoryModel(
      icon: Icon(Icons.school_outlined),
      name: "Education",
      subCategories: [
        SubCategoryModel(name: "Internet", icon: Icons.wifi),
        SubCategoryModel(name: "Electricity", icon: Icons.bolt),
        SubCategoryModel(name: "Water", icon: Icons.water_drop)
      ]),
  CategoryModel(
      icon: Icon(Icons.monitor_heart_outlined),
      name: "Health & Fitness",
      subCategories: [
        SubCategoryModel(name: "Internet", icon: Icons.wifi),
        SubCategoryModel(name: "Electricity", icon: Icons.bolt),
        SubCategoryModel(name: "Water", icon: Icons.water_drop)
      ]),
];
