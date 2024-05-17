import 'package:api/headers.dart';

import '../modal/HousePlantsModal.dart';

class HousePlantsController extends ChangeNotifier {
  List<HousePlants> allHousePlants = [];

  HousePlantsController() {
    loadData();
  }

  Future<void> loadData() async {
    allHousePlants = await ApiHelper.apiHelper.getHousePlantsData();

    notifyListeners();
  }
}
