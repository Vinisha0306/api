import 'package:api/headers.dart';

import '../modal/linkedInModal.dart';

class LinkedInController extends ChangeNotifier {
  List<LinkedIn> allLinkedIn = [];

  LinkedInController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allLinkedIn = await ApiHelper.apiHelper.getLinkedInData();
    notifyListeners();
  }
}
