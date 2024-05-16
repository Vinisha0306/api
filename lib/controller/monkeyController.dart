import 'package:api/headers.dart';

import '../modal/monkeyModal.dart';

class MonkeyController extends ChangeNotifier {
  List<Monkey> allMonkey = [];

  MonkeyController() {
    loadData();
  }
  Future<void> loadData() async {
    allMonkey = await ApiHelper.apiHelper.getMonkeyData();

    notifyListeners();
  }
}
