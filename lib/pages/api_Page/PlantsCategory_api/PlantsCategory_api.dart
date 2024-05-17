import 'package:api/controller/PlantsCategoryController.dart';
import 'package:api/headers.dart';

class PlantsCategoryApiPage extends StatelessWidget {
  const PlantsCategoryApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    PlantsCategoryController listnable =
        Provider.of<PlantsCategoryController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[32]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allPlantsCategory.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allPlantsCategory.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allPlantsCategory[index].family),
              ),
      ),
    );
  }
}
