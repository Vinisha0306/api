import 'package:api/headers.dart';

import '../modal/BurgerModal.dart';

class BurgerController extends ChangeNotifier {
  List<Burger> allBurger = [];

  BurgerController() {
    loadData();
  }
  Future<void> loadData() async {
    allBurger = await ApiHelper.apiHelper.getBurgerData();

    notifyListeners();
  }
}
