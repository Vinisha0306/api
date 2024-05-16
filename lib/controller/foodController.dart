import 'package:api/headers.dart';

import '../modal/foodModal.dart';

class FoodController extends ChangeNotifier {
  List<Food> allFood = [];

  FoodController() {
    loadData();
  }

  Future<void> loadData() async {
    allFood = await ApiHelper.apiHelper.getFoodData();
    notifyListeners();
  }
}
