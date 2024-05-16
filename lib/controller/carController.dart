import 'package:api/headers.dart';

import '../modal/carModal.dart';

class CarController extends ChangeNotifier {
  List<Car> allCar = [];

  CarController() {
    loadData();
  }
  Future<void> loadData() async {
    allCar = await ApiHelper.apiHelper.getCarData();

    notifyListeners();
  }
}
