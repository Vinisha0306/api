import 'package:api/headers.dart';

import '../modal/WeaponsModal.dart';

class WeaponsController extends ChangeNotifier {
  List<Weapons> allWeapons = [];

  WeaponsController() {
    loadData();
  }

  Future<void> loadData() async {
    allWeapons = await ApiHelper.apiHelper.getWeaponsData();

    notifyListeners();
  }
}
