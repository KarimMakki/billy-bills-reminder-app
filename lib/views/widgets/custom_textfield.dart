import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final double width;
  final double height;
  final String? labelText;
  final TextEditingController controller;
  const CustomTextfield(
      {super.key,
      required this.width,
      required this.height,
      this.labelText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        padding: const EdgeInsets.all(10),
        child: Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 16, spreadRadius: 16)
                ]),
            width: width,
            height: height,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controller: controller,
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                  labelText: labelText,
                  labelStyle: TextStyle(color: Colors.grey.shade400)),
            )));
  }
}
