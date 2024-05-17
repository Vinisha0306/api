import 'package:api/headers.dart';

import '../modal/CakeModal.dart';

class CakeController extends ChangeNotifier {
  List<Cake> allCake = [];

  CakeController() {
    loadData();
  }
  Future<void> loadData() async {
    allCake = await ApiHelper.apiHelper.getCakeData();

    notifyListeners();
  }
}
