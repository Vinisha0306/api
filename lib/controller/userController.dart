import 'package:api/headers.dart';

class UserController extends ChangeNotifier {
  List<User> allUser = [];

  UserController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allUser = await ApiHelper.apiHelper.getUserData();
    notifyListeners();
  }
}
