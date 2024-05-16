import 'package:api/headers.dart';
import '../modal/languageModal.dart';

class LanguagesController extends ChangeNotifier {
  List<Language> allLanguage = [];

  LanguagesController() {
    loadData();
  }

  Future<void> loadData() async {
    allLanguage = await ApiHelper.apiHelper.getlanguageData();
    print("print");
    notifyListeners();
  }
}
