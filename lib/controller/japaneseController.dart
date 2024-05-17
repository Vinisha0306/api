import 'package:api/headers.dart';

import '../modal/JapaneseModal.dart';

class JapaneseController extends ChangeNotifier {
  List<JapaneseLanguage> allJapanese = [];

  JapaneseController() {
    loadData();
  }

  Future<void> loadData() async {
    allJapanese = await ApiHelper.apiHelper.getJapaneseData();

    notifyListeners();
  }
}
