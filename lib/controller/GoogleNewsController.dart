import 'package:api/headers.dart';
import 'package:api/modal/GoogleNewsModal.dart';

class GoogleNewsController extends ChangeNotifier {
  List<GoogleNews> allGoogleNews = [];

  GoogleNewsController() {
    loadData();
  }

  Future<void> loadData() async {
    allGoogleNews = await ApiHelper.apiHelper.getGoogleNewsData();

    notifyListeners();
  }
}
