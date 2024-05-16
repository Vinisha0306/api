import 'package:api/headers.dart';

class VehicleController extends ChangeNotifier {
  List allVehicle = [];

  VehicleController() {
    loadData();
  }

  Future<void> loadData() async {
    allVehicle = await ApiHelper.apiHelper.getVehicleData();

    notifyListeners();
  }
}
