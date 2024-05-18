import 'package:api/headers.dart';
import 'package:api/modal/HealsthNewsModal.dart';

class HealthNewsController extends ChangeNotifier {
  List<HealthNews> allHealthNews = [];

  HealthNewsController() {
    loadData();
  }

  Future<void> loadData() async {
    allHealthNews = await ApiHelper.apiHelper.getHealthNewsData();

    notifyListeners();
  }
}
