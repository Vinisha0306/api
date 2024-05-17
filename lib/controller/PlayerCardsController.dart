import 'package:api/headers.dart';

import '../modal/PlayerCardsModal.dart';

class PlayerCardsController extends ChangeNotifier {
  List<PlayerCards> allPlayerCards = [];

  PlayerCardsController() {
    loadData();
  }

  Future<void> loadData() async {
    allPlayerCards = await ApiHelper.apiHelper.getPlayerCardsData();

    notifyListeners();
  }
}
