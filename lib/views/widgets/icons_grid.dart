import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/icon_griditem_model.dart';
import 'package:flutter/material.dart';

class IconsGrid extends StatefulWidget {
  const IconsGrid({super.key});

  @override
  State<IconsGrid> createState() => _IconsGridState();
}

class _IconsGridState extends State<IconsGrid> {
  int? selectedIndex;
  List<Icon> icons = [
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
    Icon(Icons.electric_bolt),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: icons.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 9, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return IconButton(
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
          },
          iconSize: 22,
          padding: const EdgeInsets.only(bottom: 5),
          icon: icons[index],
          alignment: Alignment.center,
          color: selectedIndex == index ? Colors.white : secondaryColor,
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  selectedIndex == index ? Colors.black : primaryColor,
              alignment: Alignment.bottomCenter),
        );
      },
      primary: false,
    );
  }
}
