import 'package:api/headers.dart';

import '../modal/CoursesModal.dart';

class CoursesController extends ChangeNotifier {
  List<Courses> allCourses = [];

  CoursesController() {
    loadData();
  }

  Future<void> loadData() async {
    allCourses = await ApiHelper.apiHelper.getCoursesData();

    notifyListeners();
  }
}
