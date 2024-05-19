import 'package:api/headers.dart';
import 'package:api/modal/AmazonModal.dart';

class AmazonController extends ChangeNotifier {
  Amazon allAmazon =
      Amazon(totalProducts: 0, country: "", domain: "", products: []);

  AmazonController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allAmazon = await ApiHelper.apiHelper.getAmazonData();

    notifyListeners();
  }
}
