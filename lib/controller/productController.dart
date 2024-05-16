import 'package:api/headers.dart';

class ProductController extends ChangeNotifier {
  List<Product> allProduct = [];

  ProductController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allProduct = await ApiHelper.apiHelper.getProductData();
    notifyListeners();
  }
}
