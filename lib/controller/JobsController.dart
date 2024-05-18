import 'package:api/headers.dart';
import 'package:api/modal/JobsModal.dart';

class JobsController extends ChangeNotifier {
  List<Jobs> allJobs = [];

  JobsController() {
    loadData();
  }

  Future<void> loadData() async {
    allJobs = await ApiHelper.apiHelper.getJobsData();

    notifyListeners();
  }
}
