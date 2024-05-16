import 'package:api/headers.dart';

import '../modal/workOutModal.dart';

class WorkOutController extends ChangeNotifier {
  List<WorkOut> allWorkOut = [];

  WorkOutController() {
    loadData();
  }

  loadData() async {
    allWorkOut = await ApiHelper.apiHelper.getWorkOutData();

    notifyListeners();
  }
}
