import 'package:api/headers.dart';

import '../modal/tigerModal.dart';

class TigerController extends ChangeNotifier {
  List<Tiger> allTiger = [];

  TigerController() {
    loadData();
  }

  Future<void> loadData() async {
    allTiger = await ApiHelper.apiHelper.getTigerData();

    notifyListeners();
  }
}
