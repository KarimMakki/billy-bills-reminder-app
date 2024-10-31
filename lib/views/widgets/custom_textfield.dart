import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final double width;
  final double height;
  const CustomTextfield({super.key, required this.width, required this.height});

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
            child: TextField(
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                  labelText: "Enter your bill title",
                  labelStyle: TextStyle(color: Colors.grey.shade400)),
            )));
  }
}
