import 'package:api/headers.dart';

import '../modal/jokesModal.dart';

class JokesController extends ChangeNotifier {
  List<Jokes> allJokes = [];

  JokesController() {
    loadData();
  }

  Future<void> loadData() async {
    allJokes = await ApiHelper.apiHelper.getJokesData();

    notifyListeners();
  }
}
