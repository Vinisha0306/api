import 'package:api/headers.dart';

class marvelController extends ChangeNotifier {
  List allMarvel = [];

  marvelController() {
    loadData();
  }

  Future<void> loadData() async {
    allMarvel = await ApiHelper.apiHelper.getMarvelData();

    notifyListeners();
  }
}
