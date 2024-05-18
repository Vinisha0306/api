import 'package:api/headers.dart';

import '../modal/FreelancerModal.dart';

class FreelancerController extends ChangeNotifier {
  List<Freelancer> allFreelancer = [];

  FreelancerController() {
    loadData();
  }

  Future<void> loadData() async {
    allFreelancer = await ApiHelper.apiHelper.getFreelancerData();

    notifyListeners();
  }
}
