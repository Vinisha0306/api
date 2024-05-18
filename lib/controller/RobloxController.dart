import 'package:api/headers.dart';

import '../modal/RobloxModal.dart';

class RobloxController extends ChangeNotifier {
  List<Roblox> allRoblox = [];

  RobloxController() {
    loadData();
  }

  Future<void> loadData() async {
    allRoblox = await ApiHelper.apiHelper.getRobloxData();

    notifyListeners();
  }
}
