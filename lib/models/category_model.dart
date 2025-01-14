import 'package:billy_bills_reminder_app/models/subcategory_model.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final IconData? icon;
  final Image? image;
  final String name;
  final List<SubCategoryModel> subCategories;

  CategoryModel(
      {required this.name, required this.subCategories, this.icon, this.image});
}
