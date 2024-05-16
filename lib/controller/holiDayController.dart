import 'package:api/headers.dart';

import '../modal/holiDayModal.dart';

class HoliDayController extends ChangeNotifier {
  List<HoliDay> allHoliDay = [];

  HoliDayController() {
    loadData();
  }

  Future<void> loadData() async {
    allHoliDay = await ApiHelper.apiHelper.getHolidayData();

    notifyListeners();
  }
}
