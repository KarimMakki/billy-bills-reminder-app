import 'package:billy_bills_reminder_app/models/bill_model.dart';
import 'package:billy_bills_reminder_app/repositories/bills_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final homeViewModelProvider = Provider((ref) => HomeScreenViewModel(ref));
final billsRepository = BillsRepository();

class HomeScreenViewModel extends Notifier<List<BillModel>> {
  @override
  List<BillModel> build() {
    return billsRepository.bills;
  }

  List<BillModel> getUpcomingBills() {
    return state
        .where((bill) => bill.billStatus == BillStatus.Upcoming)
        .toList();
  }

  List<BillModel> getoverDueBills() {
    return state
        .where((bill) => bill.billStatus == BillStatus.Overdue)
        .toList();
  }

  List<BillModel> getPaidBills() {
    return state.where((bill) => bill.billStatus == BillStatus.Paid).toList();
  }

  void addBill(BillModel bill) {
    state = [...state, bill];
  }
}

final homeViewModelProvider =
    NotifierProvider<HomeScreenViewModel, List<BillModel>>(() {
  return HomeScreenViewModel();
});
