import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:billy_bills_reminder_app/repositories/bills_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = Provider((ref) => HomeScreenViewModel(ref));
final billsRepository = BillsRepository();

class HomeScreenViewModel {
  final Ref ref;

  HomeScreenViewModel(this.ref);

  List<BillModel> allBills = billsRepository.bills;

  List<BillModel> upcomingBills = billsRepository.bills
      .where((bill) => bill.billStatus == BillStatus.Upcoming)
      .toList();

  List<BillModel> overDueBills = billsRepository.bills
      .where((bill) => bill.billStatus == BillStatus.Overdue)
      .toList();

  List<BillModel> paidBills = billsRepository.bills
      .where((bill) => bill.billStatus == BillStatus.Paid)
      .toList();
}
