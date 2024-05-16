import 'package:api/headers.dart';

import '../modal/spotifyModal.dart';

class SpotifyController extends ChangeNotifier {
  List<Spotify> allSpotify = [];

  SpotifyController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allSpotify = await ApiHelper.apiHelper.getSpotifyData();
    notifyListeners();
  }
}
