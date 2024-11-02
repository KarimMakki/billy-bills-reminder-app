import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/material.dart';

class BillHistoryCard extends StatelessWidget {
  const BillHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Utility",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 4),
              Text(
                "Electricity Bill",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "Due",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    " Oct 10",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "COMPLETED",
                style: TextStyle(
                    color: Color(0xff84C707), fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "\$100",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }
}
