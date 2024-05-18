import 'package:api/headers.dart';

import '../modal/PhoneModal.dart';

class PhoneController extends ChangeNotifier {
  List<Phone> allPhone = [];

  PhoneController() {
    loadData();
  }

  Future<void> loadData() async {
    allPhone = await ApiHelper.apiHelper.getPhoneData();
    notifyListeners();
  }
}
