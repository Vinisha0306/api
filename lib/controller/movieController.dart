import 'package:api/headers.dart';

import '../modal/movieModal.dart';

class MovieController extends ChangeNotifier {
  List<Movie> allMovie = [];

  MovieController() {
    loadData();
  }

  Future<void> loadData() async {
    allMovie = await ApiHelper.apiHelper.getMovieData();
    notifyListeners();
  }
}
