import 'package:api/headers.dart';

import '../modal/YummlyModal.dart';

class YummlyController extends ChangeNotifier {
  List<Yummly> allYummly = [];

  YummlyController() {
    loadData();
  }

  Future<void> loadData() async {
    allYummly = await ApiHelper.apiHelper.getYummlyData();

    notifyListeners();
  }
}
