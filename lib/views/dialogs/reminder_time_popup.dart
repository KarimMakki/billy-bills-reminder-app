import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class ReminderTimePopup extends StatefulWidget {
  const ReminderTimePopup({super.key});

  @override
  State<ReminderTimePopup> createState() => _ReminderTimePopupState();
}

class _ReminderTimePopupState extends State<ReminderTimePopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 50,
      child: TimePickerSpinnerPopUp(
        textStyle: const TextStyle(color: highlightColor),
        use24hFormat: false,
        mode: CupertinoDatePickerMode.time,
        initTime: DateTime.now(),
        onChange: (dateTime) {},
      ),
    );
  }
}



// Future<dynamic> reminderBottomSheet(BuildContext context) async {
//   final List<String> durations = ["Daily", "Weekly", "Monthly", "Yearly"];
//   await showModalBottomSheet(
//     context: context,
//     builder: (context) {
//       return DraggableScrollableSheet(
//         expand: false,
//         builder: (context, scrollController) {
//           return ListView.builder(
//             itemCount: durations.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(
//                   durations[index],
//                 ),
//                 trailing: const Icon(
//                   Icons.chevron_right,
//                   color: primaryColor,
//                 ),
//               );
//             },
//           );
//         },
//       );
//     },
//   );
// }
