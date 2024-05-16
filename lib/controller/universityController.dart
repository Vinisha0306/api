import 'package:api/headers.dart';
import '../modal/universityModal.dart';

class UniversityController extends ChangeNotifier {
  List<University> allUniversity = [];

  UniversityController() {
    loadData();
  }

  Future<void> loadData() async {
    allUniversity = await ApiHelper.apiHelper.getUniversityData();

    notifyListeners();
  }
}
