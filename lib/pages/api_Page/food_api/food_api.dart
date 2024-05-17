import 'package:api/controller/foodController.dart';
import 'package:api/headers.dart';

class FoodApiPage extends StatelessWidget {
  const FoodApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    FoodController mutable = Provider.of<FoodController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppRoutes.ApiOptions[5]['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: mutable.allFood.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: mutable.allFood.length,
                itemBuilder: (context, index) =>
                    Text(mutable.allFood[index].shopName),
              ),
      ),
    );
  }
}
