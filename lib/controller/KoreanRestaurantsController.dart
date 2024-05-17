import 'package:api/headers.dart';

import '../modal/KoreanRestaurantsModal.dart';

class KoreanRestaurantsController extends ChangeNotifier {
  List<KoreanRestaurants> allKoreanRestaurants = [];

  KoreanRestaurantsController() {
    loadData();
  }

  Future<void> loadData() async {
    allKoreanRestaurants = await ApiHelper.apiHelper.getKoreanRestaurantsData();

    notifyListeners();
  }
}
