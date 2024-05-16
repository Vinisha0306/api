import 'package:api/headers.dart';

import '../modal/emojiModal.dart';

class EmojiController extends ChangeNotifier {
  List<Emoji> allEmoji = [];

  EmojiController() {
    loaddata();
  }

  Future<void> loaddata() async {
    allEmoji = await ApiHelper.apiHelper.getEmojiData();

    notifyListeners();
  }
}
