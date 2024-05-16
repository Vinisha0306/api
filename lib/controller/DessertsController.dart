import 'package:api/headers.dart';
import 'package:api/modal/DessertsModal.dart';

class DessertsController extends ChangeNotifier {
  List<Desserts> allDesserts = [];

  DessertsController() {
    loadData();
  }

  Future<void> loadData() async {
    allDesserts = await ApiHelper.apiHelper.getDessertsData();

    notifyListeners();
  }
}
