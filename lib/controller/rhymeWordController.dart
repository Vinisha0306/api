import 'package:api/headers.dart';

class RhymeWordController extends ChangeNotifier {
  List allRhymeWord = [];

  RhymeWordController() {
    loadData();
  }

  Future<void> loadData() async {
    allRhymeWord = await ApiHelper.apiHelper.getRhymeWordData();

    notifyListeners();
  }
}
