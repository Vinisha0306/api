import 'package:api/headers.dart';

import '../modal/sportModal.dart';

class SportController extends ChangeNotifier {
  List<Sport> allSport = [];

  SportController() {
    loadData();
  }

  Future<void> loadData() async {
    allSport = await ApiHelper.apiHelper.getSportData();

    notifyListeners();
  }
}
