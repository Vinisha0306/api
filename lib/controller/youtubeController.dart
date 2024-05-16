import 'package:api/headers.dart';

import '../modal/youtubeModal.dart';

class YoutubeController extends ChangeNotifier {
  List<Youtube> allYoutube = [];

  YoutubeController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allYoutube = await ApiHelper.apiHelper.getYoutubeData();
    notifyListeners();
  }
}
