import 'package:api/controller/carController.dart';
import 'package:api/headers.dart';

class CarApiPage extends StatelessWidget {
  const CarApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    CarController listnable = Provider.of<CarController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRoutes.ApiOptions[25]['title'],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listnable.allCar.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listnable.allCar.length,
                itemBuilder: (context, index) =>
                    Text(listnable.allCar[index].make.name),
              ),
      ),
    );
    ;
  }
}
