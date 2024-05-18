import 'package:api/headers.dart';

import '../modal/WeatherModal.dart';

class WeatherController extends ChangeNotifier {
  List<Weather> allWeather = [];

  WeatherController() {
    loadData();
  }

  Future<void> loadData() async {
    allWeather = await ApiHelper.apiHelper.getWeatherData();

    notifyListeners();
  }
}
