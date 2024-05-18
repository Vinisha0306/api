import 'package:api/controller/WeatherController.dart';
import 'package:api/headers.dart';

class WeatherApiPage extends StatelessWidget {
  const WeatherApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherController listnable = Provider.of<WeatherController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[41]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allWeather.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allWeather.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    Text("${listnable.allWeather[index].date}"),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("${listnable.allWeather[index].weather.text}")
                  ],
                ),
              ),
      ),
    );
  }
}
