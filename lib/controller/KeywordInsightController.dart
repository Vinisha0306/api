import 'package:api/headers.dart';

import '../modal/KeywordInsightModal.dart';

class KeywordInsightController extends ChangeNotifier {
  List<KeywordInsight> allKeywordInsight = [];

  KeywordInsightController() {
    loadData();
  }

  Future<void> loadData() async {
    allKeywordInsight = await ApiHelper.apiHelper.getKeywordInsightData();

    notifyListeners();
  }
}
