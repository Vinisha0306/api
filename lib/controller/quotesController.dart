import 'package:api/headers.dart';

import '../modal/quotesModal.dart';

class QuotesController extends ChangeNotifier {
  List<Quotes> allQuotes = [];

  QuotesController() {
    loadData();
  }

  Future<void> loadData() async {
    allQuotes = await ApiHelper.apiHelper.getQuotesData();

    notifyListeners();
  }
}
