import 'package:api/headers.dart';

import '../modal/PlantsCategoryModal.dart';

class PlantsCategoryController extends ChangeNotifier {
  List<PlantsCategory> allPlantsCategory = [];

  PlantsCategoryController() {
    loadData();
  }

  Future<void> loadData() async {
    allPlantsCategory = await ApiHelper.apiHelper.getPlantsCategoryData();

    notifyListeners();
  }
}
