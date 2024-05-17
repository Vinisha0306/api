import 'package:api/headers.dart';

import '../modal/bhagavadGitaModal.dart';

class BhagavadGitaController extends ChangeNotifier {
  List<BhagavadGita> allBhagavadGita = [];

  BhagavadGitaController() {
    loadData();
  }

  Future<void> loadData() async {
    allBhagavadGita = await ApiHelper.apiHelper.getBhagavadGitaData();

    notifyListeners();
  }
}
