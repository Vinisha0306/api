import 'package:api/headers.dart';

import '../modal/hospitalModal.dart';

class HospitalController extends ChangeNotifier {
  List<Hospital> allHospital = [];

  HospitalController() {
    loadData();
  }
  Future<void> loadData() async {
    allHospital = await ApiHelper.apiHelper.getHospitalData();

    notifyListeners();
  }
}
