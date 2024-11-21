import 'package:billy_bills_reminder_app/constants/constants.dart';
import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



// class DurationBottomSheet extends StatefulWidget {
//   final void Function() onTap;
// const  DurationBottomSheet({super.key,});

//   @override
//   State<DurationBottomSheet> createState() => _DurationBottomSheetState();
// }

// class _DurationBottomSheetState extends State<DurationBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return DraggableScrollableSheet(
//       expand: false,
//       builder: (context, scrollController) {
//         return ListView.builder(
//           itemCount: BillDuration.values.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(
//                 BillDuration.values[index].name,
//               ),
//               trailing: const Icon(
//                 Icons.chevron_right,
//                 color: primaryColor,
//               ),
//               onTap: () {
//                 setState(() {
              
//                 });
//                 context.pop();
//               },
//             );
//           },
//         );
//       },
//     );
//   }
// }
