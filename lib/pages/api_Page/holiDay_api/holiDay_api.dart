import 'package:api/controller/holiDayController.dart';
import 'package:api/headers.dart';

class HoliDayApiPage extends StatelessWidget {
  const HoliDayApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    HoliDayController listnable = Provider.of<HoliDayController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[19]['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: listnable.allHoliDay.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allHoliDay.length,
                itemBuilder: (context, index) => Text(
                  listnable.allHoliDay[index].name,
                ),
              ),
      ),
    );
  }
}
