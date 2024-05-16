import 'package:api/headers.dart';

import '../modal/followersModal.dart';

class FollowerController extends ChangeNotifier {
  List<Followers> allFollowers = [];

  FollowerController() {
    loadData();
  }

  Future<void> loadData() async {
    allFollowers = await ApiHelper.apiHelper.getFollowersData();
    notifyListeners();
  }
}
