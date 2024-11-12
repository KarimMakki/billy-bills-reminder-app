import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BillAmountTextfield extends StatelessWidget {
  final double height;
  final double width;
  final TextEditingController controller;
  const BillAmountTextfield(
      {super.key,
      required this.height,
      required this.width,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            border: Border.all(
              width: 1,
              color: Colors.grey.shade300,
            )),
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: InputBorder.none,
              labelText: "Enter Bill Amount",
              icon: Icon(
                Icons.attach_money_outlined,
                color: primaryColor,
              ),
              labelStyle: TextStyle(color: primaryColor, fontSize: 14)),
        ));
  }
}
