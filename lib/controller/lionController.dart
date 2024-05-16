import 'package:api/headers.dart';

import '../modal/lionModal.dart';

class LionController extends ChangeNotifier {
  List<Lion> allLion = [];

  LionController() {
    loadData();
  }

  Future<void> loadData() async {
    allLion = await ApiHelper.apiHelper.getLionData();

    notifyListeners();
  }
}
