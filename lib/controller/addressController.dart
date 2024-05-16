import 'package:api/headers.dart';
import '../modal/addressModal.dart';

class AddressController extends ChangeNotifier {
  List<Location> allAddress = [];

  AddressController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allAddress = await ApiHelper.apiHelper.getAddressData();

    notifyListeners();
  }
}
