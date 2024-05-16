import 'package:api/headers.dart';

import '../modal/cricketModal.dart';

class CricketController extends ChangeNotifier {
  List<Cricket> allCricket = [];

  CricketController() {
    loadData();
  }

  Future<void> loadData() async {
    allCricket = await ApiHelper.apiHelper.getCricketData();

    notifyListeners();
  }
}
