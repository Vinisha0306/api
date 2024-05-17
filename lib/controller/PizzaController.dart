import 'package:api/headers.dart';

import '../modal/pizzaModal.dart';

class PizzaController extends ChangeNotifier {
  List<Pizza> allPizza = [];

  PizzaController() {
    loadData();
  }

  Future<void> loadData() async {
    allPizza = await ApiHelper.apiHelper.getPizzaData();

    notifyListeners();
  }
}
