import 'package:api/controller/HousePlantsController.dart';
import 'package:api/headers.dart';

class HousePlantsApiPage extends StatelessWidget {
  const HousePlantsApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    HousePlantsController listnable =
        Provider.of<HousePlantsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[32]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allHousePlants.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allHousePlants.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allHousePlants[index].category),
              ),
      ),
    );
  }
}
